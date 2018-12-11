% Try it yourselves!
% Work 1: Given y = 4x4 - 3x3 + 2x2 – x + 1

%initial
clear
close all
clc

% 1. plot the graph of y
% 1.1 assign range of x
x = -2:0.01:2;
% 1.2 assign function y = 4x4 - 3x3 + 2x2 – x + 1
y = 4*x.^4 - 3*x.^3 + 2*x.^2 - x + 1;
%1.3 plot graph
figure, plot(x,y), title('y = 4x4 - 3x3 + 2x2 – x + 1')

% 2. find the differential of y and plot its differential
z1 = diff(y);
figure, plot(z1), title('dy/dx')

% 3. Find the 2nd differential of y and plot its differential
z2 = diff(z1);
figure, plot(z2), title('dy^2/dx^2')