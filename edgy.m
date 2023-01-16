function output = edgy(input)

% Function written by Eleni Christoforidou in MATLAB R2022b.

% This function takes an original image input, and produces a processed 
% image. Both the input and the output argument are grayscale images, that 
% is, matrices of uint8 values. Note that the output has two fewer rows and
% columns than the input since the pixels in the first and last columns and
% rows do not have enough neighbors for the required computation. The
% function uses the Sobel operator.

% Define the Sobel kernels
hx = [-1 0 1; -2 0 2; -1 0 1];
hy = [-1 -2 -1; 0 0 0; 1 2 1];

% Apply the Sobel kernels to the input image
Gx = conv2(double(input), hx, 'same');
Gy = conv2(double(input), hy, 'same');

% Compute the gradient magnitude
output = uint8(sqrt(Gx.^2 + Gy.^2));

% Remove the first and last rows and columns
output = output(2:end-1, 2:end-1);
end