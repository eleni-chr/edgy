# edgy
Trace outlines of image

Function written by Eleni Christoforidou in MATLAB R2022b.

This function takes an original image input, and produces a processed image. Both the input and the output argument are grayscale images, that is, matrices of uint8 values. Note that the output has two fewer rows and columns than the input since the pixels in the first and last columns and rows do not have enough neighbors for the required computation. The function uses the Sobel operator. An example input image is provided.

## Example input and output

![example image](https://github.com/eleni-chr/edgy/blob/main/example.png)
