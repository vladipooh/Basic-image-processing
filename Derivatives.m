%initial
clear
close all
clc

x = -4:0.1:4;
y = x.^2;
figure, plot(x,y),title('y = x^2');
z = diff(y);
figure, plot(z),title('dy/dx');

s = diff(z)
figure, plot(s),title('diff z');