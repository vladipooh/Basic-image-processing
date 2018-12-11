% initial
clear
close all
clc

% 1. Read an image from a file (Original) (find an image from Internet)
% RGB = imread('saturn.png');
RGB = imread('C:\Users\60631005-0\Downloads\alpaca.jpeg');
I = rgb2gray(RGB);

% 2. Display the image with title
figure, imshow(I), title('Original Img')

% 3. Display the histogram of the image (must be a grayscale image) with title
figure, imhist(I), title('Histogram I')

% 4. Compute the histogram equalization (Equalized)
J = histeq(I);

% 5. Display the equalized image with title
figure, imshow(J), title('HistEq of I')

% 6. Display the equalized histogram with title
figure, imhist(J), title('Histogram J')

% 7. Find image’s absolute difference between the images before and after equalization
diff = imabsdiff(I,J);

% 8. Display the image of the absolute difference with title
figure, imshow(diff), title('HistEq of diff')

% 9. Convert the image differences to binary image
lv = graythresh(diff)
bw = im2bw(diff,lv);

% 10. Display the binary image of the image of absolute difference with title
figure, imshow(bw), title('BW of diff')

% 11. Show the snapshot of workspace containing all defined variables


% 12. Explain why the value of computed threshold for binarization is a decimal value less than 1 not a value between 0 to 255
% Absolute value should be only positive number and we can not display
% negative value in the image