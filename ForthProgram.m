%Img average filter

%initial
clear
close all
clc

% read image
I = imread('coins.png');

figure, imshow(I), title('Original img')

% assign averaging filter (ones) dimension 5x5 default square 3x3
h = ones(5,5)/(5*5)
h3x3 = ones(3,3)/(3*3)
% filter img
Ifilter = imfilter(I,h);

figure, imshow(Ifilter), title('Filtered img 5x5')

Ifilter2 = imfilter(I,h3x3);

figure, imshow(Ifilter2), title('Filtered img 3x3')