
% 0. Initialization
close all, clear, clc

% Pick original image
RGB = imread('C:\Users\60631005-0\Downloads\swan.jpg');
I = rgb2gray(RGB);
figure, imshow(I), title('Original image')

% Convert the original image to binary
Ibw = im2bw(I,graythresh(I));
figure, imshow(Ibw), title('Binary image')

% Find boundary of the image by square SE
SE = strel('square',3);
Ibw_erode = imerode(Ibw,SE);
Ibound = abs(Ibw_erode - Ibw);
figure, imshow(Ibound), title('Boundary image square')

% Find boundary of the image by diamond SE
SE2 = strel('diamond',1);
Ibw_erode2 = imerode(Ibw,SE2);
Ibound2 = abs(Ibw_erode2 - Ibw);
figure, imshow(Ibound2), title('Boundary image diamond')