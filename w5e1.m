% Example 5.1 Dilation
% 0. Initialization
close all, clear, clc
% 1. Create an original image (rectangular object of 1’s in background of 0’s)
BW = zeros(9,10);
BW(4:6,4:7) = 1

% 2. create structuring element of square, diamond
SE = strel('square',3)
SE_square5 = strel('square',5)
SE_diamond1 = strel('diamond',1) 
SE_diamond2 = strel('diamond',2)

% 3. Dilate the image with the structuring element
BW2 = imdilate(BW,SE)
BW2_square5 = imdilate(BW,SE_square5)
BW2_diamond1 = imdilate(BW,SE_diamond1)
BW2_diamond2 = imdilate(BW,SE_diamond2)

% 4. display binary image
figure, imshow(BW), title('Original image')
figure, imshow(BW2), title('Output image by dilating with square of 3')
figure, imshow(BW2_diamond1), title('Output image by dilating with square of radius 1')
figure, imshow(BW2_diamond2), title('Output image by dilating with square of radius 2')