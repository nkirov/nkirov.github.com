#include <iostream>
#include <fstream>

using namespace std;

/*
  This program writes an animated GIF file. Put your code
  into the create_animation function. That function will be
  called once for each frame.
*/

// Image dimensions

const int ROWS = 200;
const int COLUMNS = 400;
const int FRAMES = 100;

// RGB color constants
const int BLUE = 255;
const int GREEN = 255 * 256;
const int RED = 255 * 256 * 256;
const int YELLOW = RED + GREEN;
const int CYAN = GREEN + BLUE;
const int MAGENTA = RED + BLUE;
const int WHITE = RED + GREEN + BLUE;
const int PINK = RED + GREEN * 3 / 4 + BLUE * 3 / 4;
const int BLACK = 0;

/**
   Creates a frame in a two-dimensional array of pixels.
   Modify this function to create your own animation.
   @param pixels the pixels of the image
   @param frame the frame (between 0 and FRAMES - 1)
*/
void create_frame(int pixels[ROWS][COLUMNS], int frame)
{
   // This sample makes a moving square. 
   // Change this code to make your own animations.

   for (int r = 0; r < 100; r++)
   {
      for (int c = 0; c < 100; c++)
      {
         pixels[r][c + frame] = BLACK;
      }
   }
}

// -------------------------------------------------------------------

/*
  The code below saves an animated GIF image file.
  You can use this program to create images without 
  reading or understanding the code below. 

  The code uses C++ features that are introduced in chapter 8, 
  as well as the internals of the GIF format 
  (http://en.wikipedia.org/wiki/Graphics_Interchange_Format)

  To keep the code simple, these images are uncompressed and quite
  large.
*/

void put_string(fstream& stream, const char str[])
{
   int i = 0;
   while (str[i] != '\0')
   {
      stream.put(str[i]);
      i++;
   }
}

/**
   Puts a two-byte integer onto a stream.
   @param stream the stream
   @param value the value to put
*/
void put_int2(fstream& stream, int value)
{
   stream.put(value % 256);
   stream.put(value / 256);
}

/**
   Rounds an RGB color to the nearest color in the color space
   for this GIF image.
   @param color an RGB color whose red, blue, green components 
   are between 0 and 255
   @return a color whose red, blue, green components 
   are between 0 and 4
*/
int gif_color(int color)
{
   int blue = color % 256;
   int green = (color / 256) % 256;
   int red = color / 65536;
   blue = (blue + 31) * 4 / 255;
   green = (green + 31) * 4 / 255;
   red = (red + 31) * 4 / 255;
   return 25 * red + 5 * green + blue;
}

/**
   Writes a GIF header to a stream.
   @param stream the stream
*/
void gif_header(fstream& stream)
{
   put_string(stream, "GIF89a");
   put_int2(stream, COLUMNS);
   put_int2(stream, ROWS);
   stream.put(0xF6);
   stream.put(0);
   stream.put(0);
   // Color table
   for (int r = 0; r <= 4; r++)
   {
      for (int g = 0; g <= 4; g++)
      {
         for (int b = 0; b <= 4; b++)
         {
            stream.put(r * 255 / 4);
            stream.put(g * 255 / 4);
            stream.put(b * 255 / 4);
         }
      }
   }
   // These colors are unused
   for (int i = 125; i < 128; i++)
   {
      stream.put(0);
      stream.put(0);
      stream.put(0);      
   }
}

/**
   Writes a GIF image descriptor to a stream.
   @param stream the stream
*/
void gif_image_descriptor(fstream& stream)
{
   stream.put(',');
   put_int2(stream, 0); // top left corner
   put_int2(stream, 0);
   put_int2(stream, COLUMNS);
   put_int2(stream, ROWS);
   stream.put(0);
   stream.put(7); // bits per pixel
}

/**
   Writes the pixels of an image to a stream in uncompressed GIF format.
   @param stream the stream
   @param pixels the image pixels
*/
void gif_pixels(fstream& stream, int pixels[ROWS][COLUMNS])
{
   int length = ROWS * COLUMNS;
   int i = 0;
   int r = 0;
   int c = 0;
   while (i < length)
   {
      int segment = 125; // need a clear code every 125 bytes
      if (i + segment > length) segment = length - i;
      stream.put(segment + 1); // number of bytes
      stream.put(128); // clear code
      for (int j = 0; j < segment; j++)
      {
         stream.put(gif_color(pixels[r][c]));
         c++;
         if (c >= COLUMNS)
         {
            c = 0;
            r++;
         }
         i++;
      }
   }
   stream.put(1); // number of bytes
   stream.put(129); // end code
   stream.put(0); // zero block ends image
}

/**
   Writes an animation frame of an animated GIF to a stream.
   @param stream the stream
   @param pixels the image pixels of this frame
   @param duration the duration of this frame in milliseconds
*/
void gif_animation_frame(fstream& stream, int pixels[ROWS][COLUMNS], 
   int duration)
{
   stream.put(0x21); 
   stream.put(0xF9); 
   stream.put(4); 
   stream.put(8); 
   put_int2(stream, duration);
   stream.put(0); 
   stream.put(0); 
   gif_image_descriptor(stream);   
   gif_pixels(stream, pixels);
}

/**
   Writes the header for a GIF animation frame to a stream.
   @param stream the stream
*/
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

/**
   Writes an animation file. The create_frame function is called
   to compute each frame of the animation.
   @param filename the name of the output file
   @param duration the duration of each frame in milliseconds
*/
void write_animation(string filename, int duration)
{
   fstream stream;
   stream.open(filename.c_str(), ios::out | ios::binary);
   gif_header(stream);

   gif_animation_header(stream);
   for (int i = 0; i < FRAMES; i++)
   {      
      int pixels[ROWS][COLUMNS];
      // Clear the background
      for (int r = 0; r < ROWS; r++)
      {
         for (int c = 0; c < COLUMNS; c++)
         {
            pixels[r][c] = WHITE;
         }
      }
      create_frame(pixels, i);
      gif_animation_frame(stream, pixels, duration);
   }
   stream.put(';');
}

int main()
{
   write_animation("animation.gif", 5);
   return 0;
}
