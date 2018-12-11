% Try it yourselves!

%initial
clear
close all
clc

% Work 3: Various Edge Operators
% 1.Find your own image
I = imread('pout.tif');
figure, imshow(I), title('Original Image')

% 2.Using the command “edge” in MATLAB to find edges of the image in 1 by the following operators: 
% sobel, prewitt, roberts, canny, laplacian of guassian
Isobel = edge(I,'sobel'); 
figure, imshow(Isobel), title('Sobel Edge Image')

Iprewitt = edge(I,'prewitt'); 
figure, imshow(Iprewitt), title('Prewitt Edge Image')

Iroberts = edge(I,'roberts'); 
figure, imshow(Iroberts), title('Roberts Edge Image')

Icanny = edge(I,'canny'); 
figure, imshow(Icanny), title('Canny Edge Image')

Ilog = edge(I,'log');
figure, imshow(Ilog), title('LOG Edge Image')

% 3.Compare all of them and analyse the results of the appearance as you could see.

% 4.Explain in terms of technical using your knowledge you have gained so far.
% ????????????????????? filter