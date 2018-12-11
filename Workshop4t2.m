% Try it yourselves!

%initial
clear
close all
clc

% Work 2: Using derivatives to find edges of an image
% 1. Find your own image and display the image with title

I = imread('pout.tif');
figure, imshow(I), title('original image')

% 2. Find the differential of the image in 1

Idiff = diff(I);

% 3. Show the image of 2 with title

figure, imshow(Idiff), title('derivative of I')

% 4. Convert the image in 3 to a binary image using Global thresholding and display the binary image with title
% 4.1 compute global threshold
threshold = graythresh(Idiff);
Iedge_bin = im2bw(Idiff,threshold);
figure, imshow(Iedge_bin), title('Binary edge image')