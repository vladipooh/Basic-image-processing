% Find edge from a noisy image vs Find edge after smoothing the noisy image

%initial
clear
close all
clc

% 1. Choose your own image (if RGB image, have to convert to gray first) and display the image with title

RGB = imread('C:\Users\60631005-0\Downloads\alpaca.jpeg');
I = rgb2gray(RGB);

figure, imshow(I), title('Original image without noise')

% 2. Add salt&pepper noise with d = 0.01 to the gray image in 1 and display the image with title

Inoisy = imnoise(I,'salt & pepper',0.01);
figure, imshow(Inoisy), title('Original image with Salt and Pepper Noise')

% 3. Find edge from a noisy image in 2 using �sobel? and display the image with title

Isobel = edge(Inoisy,'sobel'); 
figure, imshow(Isobel), title('Sobel Edge Image')

% 4. Smooth the noisy image in 2 with �gaussian? filter, hsize = [5 5], sigma = 2 and display the smoothed image with title

IGaussian = imfilter(I,fspecial('gaussian',[5 5], 2));
figure, imshow(IGaussian), title('Sharpened img Gaussian') 

% 5. Find edge from the smoothed image in 4 with �sobel? and display the image with title

IGaussian_sobel = edge(IGaussian,'sobel'); 
figure, imshow(IGaussian_sobel), title('Sobel Edge Smoothed Image')

% 6. Compare between image in 3 and 5 and tell the difference