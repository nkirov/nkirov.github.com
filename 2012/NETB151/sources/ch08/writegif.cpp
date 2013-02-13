#include <iostream>
#include <fstream>
#include <cstdlib>
#include <cmath>
#include <string>
#include <vector>

using namespace std;

void put_string(fstream& stream, const char str[])
{
   int i = 0;
   while (str[i] != '\0')
   {
      stream.put(str[i]);
      i++;
   }
}

void put_int2(fstream& stream, int n)
{
   stream.put(n % 256);
   stream.put(n / 256);
}

void gif_header(fstream& stream, int width, int height)
{
   put_string(stream, "GIF89a");
   put_int2(stream, width);
   put_int2(stream, height);
   stream.put(0xF6);
   stream.put(0);
   stream.put(0);
   for (int r = 0; r <= 4; r++)
      for (int g = 0; g <= 4; g++)
         for (int b = 0; b <= 4; b++)
         {
            stream.put(r * 255 / 4);
            stream.put(g * 255 / 4);
            stream.put(b * 255 / 4);
         }
   // Don't need these
   for (int i = 126; i <= 128; i++)
   {
      stream.put(0);
      stream.put(0);
      stream.put(0);      
   }
}

void gif_image_descriptor(fstream& stream, int width, int height)
{
   stream.put(',');
   put_int2(stream, 0); // top left corner
   put_int2(stream, 0);
   put_int2(stream, width);
   put_int2(stream, height);
   stream.put(0);
   stream.put(7); // bits per pixel
}

void gif_pixels(fstream& stream, char colors[], int width, int height)
{
   int length = width * height;
   int i = 0;
   while (i < length)
   {
      int segment = 125; // need a clear code every 125 bytes
      if (i + segment > length) segment = length - i;

      stream.put(segment + 1); // number of bytes
      stream.put(128); // clear code
      for (int j = 0; j < segment; j++)
      {
         stream.put(colors[i]);
         i++;
      }
   }
   stream.put(1); // number of bytes
   stream.put(129); // end code
   stream.put(0); // zero block ends image
}

void gif_animation_header(fstream& stream)
{
   stream.put(0x21); 
   stream.put(0xFF); 
   stream.put(11); 
   put_string(stream, "NETSCAPE2.0");
   stream.put(3); 
   stream.put(1); 
   stream.put(0xFF); 
   stream.put(0xFF); 
   stream.put(0); 
}

void gif_animation_frame(fstream& stream, char colors[], int width, int height, int duration)
{
   stream.put(0x21); 
   stream.put(0xF9); 
   stream.put(4); 
   stream.put(8); 
   put_int2(stream, duration);
   stream.put(0); 
   stream.put(0); 
   gif_image_descriptor(stream, width, height);   
   gif_pixels(stream, colors, width, height);
}

class Canvas
{
public:
   Canvas(int width, int height);
   void add_frame();
   void rectangle(int xleft, int ytop, int width, int height, int color);
   void write(string filename);
private:
   int canvas_width;
   int canvas_height;
   vector<char*> frames;
};

Canvas::Canvas(int width, int height)
{
   canvas_width = width;
   canvas_height = height;
}

void Canvas::add_frame()
{
   int size = canvas_width * canvas_height;
   char* frame = new char[size];
   for (int i = 0; i < size; i++) frame[i] = 0;
   frames.push_back(frame);
}

void Canvas::rectangle(int xleft, int ytop, int rect_width, int rect_height, int color)
{
   if (frames.size() == 0) add_frame();
   char* frame = frames[frames.size() - 1];
   for (int x = 0; x < rect_width; x++)
      for (int y = 0; y < rect_height; y++)
         frame[xleft + x + canvas_width * (ytop + y)] = color;
}

void Canvas::write(string filename)
{
   fstream stream;
   stream.open(filename.c_str(), ios::out | ios::binary);
   gif_header(stream, canvas_width, canvas_height);

   if (frames.size() == 0) add_frame();
   if (frames.size() == 1)
   {
      gif_image_descriptor(stream, canvas_width, canvas_height);
      gif_pixels(stream, frames[0], canvas_width, canvas_height);
   }
   else
   {
      gif_animation_header(stream);
      int duration = 10;
      for (int i = 0; i < frames.size(); i++)
         gif_animation_frame(stream, frames[i], canvas_width, canvas_height, duration);
   }
   stream.put(';');
}

int main()
{
   Canvas canvas(3 * 360, 200);

   for (int f = 0; f < 360; f += 10)
   {
      canvas.add_frame();
      for (int x = 0; x < 360; x++)
      {
         int y = 100 * sin((x + f) * 2 * M_PI / 360);
         if (y > 0) 
            canvas.rectangle(3 * x, 100 - y, 2, y, 124);
         else
            canvas.rectangle(3 * x, 100, 2, -y, 124);
      }
   }
   /*
   int width = 60;
   int height = 50;
   Canvas canvas(width, height);
   canvas.rectangle(1,1,width-2,height-2, 4);
   canvas.add_frame();
   canvas.rectangle(1,1,width-2,height-2, 20);
   */
   canvas.write("graph.gif");
   return 0;
}
