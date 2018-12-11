% Img difference

% read img, histeq,  find and show img difference

% initial
clear
close all 
clc

% I = imread('coins.png');
I = imread('pout.tif');

% show original img
figure, imshow(I), title('original img')

% histogram equalization for I : contrast improvement
J = histeq(I);
figure, imshow(J), title('histogram equalization of I')

% find absolute difference btw I & J
Diff = imabsdiff(I,J);
figure, imshow(Diff), title('absolute dif img')

