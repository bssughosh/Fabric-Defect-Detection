clc;
clear all;
close all;

x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking2\\img\\3.JPG');
subplot(1,3,1);
imshow(x);
title('Original Fabric');
x=rgb2gray(x);
subplot(1,3,2);
imshow(x);
title('Grayscale Image');
level = graythresh(x);
H1 = im2bw(x,level);

SE = strel('square', 4);
op1 = imerode(H1, SE);
op2 = imdilate(op1, SE);

SE1 = strel('diamond', 3);
op11 = imerode(op2, SE1);

SE2 = strel('disk', 3, 0);
op21 = imdilate(op11, SE2);
op31 = imerode(op21, SE2);
op41 = imdilate(op31, SE2);
op51 = imdilate(op41, SE2);

subplot(1,3,3);
imshow(op51);
title('Final Binary Output');

y = imfuse(x,op51);
