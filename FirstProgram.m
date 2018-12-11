% Read img, show img, show img histogram, histogram equalization
% Write img histeq

% initialize
clear
close all
clc

% read an img
I = imread('pout.tif');

% show the original img
figure, imshow(I), title('original image I')

% show histogram of the original img
figure, imhist(I), title('histogram image I')

% histogram equalization for I : contrast improvement
J = histeq(I);
figure, imshow(J), title('histogram equalization of I')
figure, imhist(J), title('histogram image J')

% write the result img to file
imwrite(J,'pout_histeq.jpg')

% show info of img J
imfinfo('pout_histeq.jpg')