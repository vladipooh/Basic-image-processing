% Img binalization

% read img, find threshold, convert to binary, show img

% initial
clear
close all 
clc

I = imread('coins.png');

% show original img
figure, imshow(I), title('original img')

% show histogram of I
figure, imhist(I), title('histogram of I')

% manually specify global thrashold value
threshold = 100/255;

% convert to binary
IBW1 = im2bw(I,threshold);

% show output img
figure, imshow(IBW1), title('binary img by manual threshold')

% automatically compute global threshold by Otsu : grayhresh
threshold2 = graythresh(I)

IBW2 = im2bw(I,threshold2);


% show output img
figure, imshow(IBW2), title('binary img by auto threshold')