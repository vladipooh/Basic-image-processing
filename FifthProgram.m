%Img sharpening filtering using fspecial and imfilter

%initial
clear
close all
clc

% read image
I = imread('moon.tif');
figure, imshow(I), title('Original img')

% assign a predefined filter
hSharpen = fspecial('unsharp')

% filter
ISharpen = imfilter(I,hSharpen);
figure, imshow(ISharpen), title('Sharpened img')

% assign a predefined filter
hAVG = fspecial('average',[3 3])

% filter
IAVG = imfilter(I,hAVG);
figure, imshow(IAVG), title('Sharpened img AVG')

% assign a predefined filter
hGaussian = fspecial('gaussian',[3 3], 0.7)

% filter
IGaussian = imfilter(I,hGaussian);
figure, imshow(IGaussian), title('Sharpened img Gaussian')

% assign a predefined filter
hDisk = fspecial('disk')

% filter
IDisk = imfilter(I,hDisk);
figure, imshow(IDisk), title('Sharpened img Disk')