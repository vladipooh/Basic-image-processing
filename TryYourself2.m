%initial
clear
close all
clc

% 1. Read any image from a file and display with the title of �Original image without noise�
RGB = imread('C:\Users\60631005-0\Downloads\alpaca.jpeg');
I = rgb2gray(RGB);

figure, imshow(I), title('Original image without noise')

% 2. Add �salt and pepper noise� to the image and display with the title of �Original image with Salt and Pepper Noise�
J = imnoise(I,'salt & pepper',0.02);
figure, imshow(J), title('Original image with Salt and Pepper Noise')

% 3. Filter the noisy image (image in #2) with a median filter and display the filtered image with the title of �Filtered image with median filter�
ImedFil= medfilt2(J,[3 3]);
figure, imshow(ImedFil), title('Filtered image with median filter')

% 4. Find the absolute difference image between the original image without noise(#1) and the filtered image(#3) (imabsdiff), and display the result with title.
diff = imabsdiff(I,ImedFil);
figure, imshow(diff), title('Difference of #1 and #3')

% 5. Convert the difference image(#4) to a binary image using Global Threshold and display the binary image with the title of �Difference image in binary�,
lv = graythresh(diff)
Ibw = im2bw(diff,lv);
figure, imshow(Ibw), title('Difference image in binary')

% 6. Sharpen the Image in #3 with sharpening filter and display the result with title
Isharp = imfilter(ImedFil,fspecial('unsharp'));
figure, imshow(Isharp), title('Sharpen image#3')

% 7. Find the absolute difference image between image in #1 and image in #6 and display the result with title
diff2 = imabsdiff(I,Isharp);
figure, imshow(diff2), title('Difference of #1 and #6')

% 8. Convert the difference image in #7 to binary image and display the result with title
lv2 = graythresh(diff2)
Ibw2 = im2bw(diff2,lv2);
figure, imshow(Ibw2), title('Difference image2 in binary')