%Remove noise using non-linear filter : avg compare with median 

%initial
clear
close all
clc

% read image
I = imread('eight.tif');
figure, imshow(I), title('Original img')

% add noise
J = imnoise(I,'salt & pepper',0.1);
figure, imshow(J), title('Noisy img')

% AVG filter

K = imfilter(J,fspecial('average'));
figure, imshow(K), title('Averaged img')

% Median filter

L = medfilt2(J,[5 5]);
figure, imshow(L), title('Medianed img')

M = imfilter(L,fspecial('unsharp'));
figure, imshow(M), title('Sharpen img')