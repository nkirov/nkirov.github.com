#include <iostream>
#include <fstream>

using namespace std;

/*
  This program draws an image. Modify the create_image function below
  to create your own images. Change the image dimensions if desired.
  Compile and run the program, then look at image.bmp.

  Each pixel in the two-dimensional array of pixels is a color 
  value in RGB format. Use one of the color constants defined below
  for each pixel.
*/

// Image dimensions
const int ROWS = 600;
const int COLUMNS = 800;

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
   Creates an image in a two-dimensional array of pixels.
   Modify this function to create your own images.
   @param pixels the pixels of the image
*/
void create_image(int pixels[ROWS][COLUMNS])
{
   // This sample makes two rectangles. 

   for (int r = 0; r < 100; r++)
   {
      for (int c = 0; c < 200; c++)
      {
         pixels[r][c] = RED;
      }
   }

   for (int r = 50; r < 250; r++)
   {
      for (int c = 100; c < 200; c++)
      {
         pixels[r][c] = PINK;
      }
   }
}

// -------------------------------------------------------------------

/*
  The code below saves an image file in the BMP format.
  You can use this program to create images without 
  reading or understanding the code below. 

  The code uses C++ features that are introduced in chapter 8, 
  as well as the internals of the BMP format 
  (http://en.wikipedia.org/wiki/BMP_file_format)
*/

/**
   Put an unsigned integer to a stream.
   @param stream the stream
   @param value the value to put
   @param bytes the number of bytes for the value
*/
void put_unsigned_int(fstream& stream, int value, int bytes)
{
   int temp = value;
   for (int i = 1; i <= bytes; i++)
   {
      stream.put(temp % 256);
      temp = temp / 256;
   }
}

/**
   Saves an image as a BMP file.
   @param pixels the pixels of the image
   @param filename the filename for the image
*/
void save_image(int pixels[ROWS][COLUMNS], string filename)
{
   fstream stream;
   // Open as a binary file
   stream.open(filename.c_str(), ios::out | ios::binary);

   // Scan lines must occupy multiples of four bytes   
   int scanline_size = COLUMNS * 3;
   int padding = 0;
   if (scanline_size % 4 != 0)
   {
       padding = 4 - scanline_size % 4;
       scanline_size = scanline_size + padding;
   }

   stream.put('B'); 
   stream.put('M');
   int size = ROWS * scanline_size;
   put_unsigned_int(stream, size, 4);
   put_unsigned_int(stream, 0, 4);
   put_unsigned_int(stream, 54, 4);
   put_unsigned_int(stream, 40, 4);
   put_unsigned_int(stream, COLUMNS, 4);
   put_unsigned_int(stream, ROWS, 4);
   put_unsigned_int(stream, 1, 2);
   put_unsigned_int(stream, 24, 2);
   put_unsigned_int(stream, 0, 4);
   put_unsigned_int(stream, 16, 4);
   put_unsigned_int(stream, 2835, 4);
   put_unsigned_int(stream, 2835, 4);
   put_unsigned_int(stream, 0, 4);
   put_unsigned_int(stream, 0, 4);

   for (int r = ROWS - 1; r >= 0; r--)
   {
      for (int c = 0; c < COLUMNS; c++)
      {
         put_unsigned_int(stream, pixels[r][c], 3);
      }
      for (int p = 0; p < padding; p++)
      {
         stream.put(0);
      }
   }
}

int main()
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

   create_image(pixels);
   save_image(pixels, "image.bmp");
   return 0;
}
