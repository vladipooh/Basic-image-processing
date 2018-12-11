% Example 5.3 Combination of Erosion and Dilation
% 0. Initialization
close all, clear, clc
% 1 Read the image into the MATLAB workspace.
BW1 = imread('circbw.tif');
% 2 Create a structuring element.
SE = strel('rectangle',[40 30]);

% Erode => Dilate
% 3 Erode the image with the structuring element.
BW2 = imerode(BW1,SE);
figure, imshow(BW2), title('Eroded image')
%4 To restore the rectangles to their original sizes, dilate the eroded image using the same structuring element, SE.
BW3 = imdilate(BW2,SE);
figure, imshow(BW3), title('Dilated the eroded image')

% Dilate => Erode
BW4 = imdilate(BW1,SE);
figure, imshow(BW4), title('Dilated image')

BW5 = imerode(BW4,SE);
figure, imshow(BW5), title('Eroded the dilated image')