clc;
clear all;
close all;

x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking2\\img\\3.JPG');

subplot(2,3,1);
imshow(x);
title('Original Fabric');

x=rgb2gray(x);

level = graythresh(x);
H1 = im2bw(x,level);

subplot(2,3,2);
imshow(H1);
title('After Thresholding');

SE = strel('square', 4);
op1 = imerode(H1, SE);
op2 = imdilate(op1, SE);

subplot(2,3,3);
imshow(op2);
title('After erosion and dilation using square');

SE1 = strel('diamond', 3);
op11 = imerode(op2, SE1);

subplot(2,3,4);
imshow(op11);
title('After erosion using diamond');

SE2 = strel('disk', 3, 0);
op21 = imdilate(op11, SE2);
op31 = imerode(op21, SE2);

subplot(2,3,5);
imshow(op31);
title('After dilation and erosion using disk');

op41 = imdilate(op31, SE2);
op51 = imdilate(op41, SE2);

subplot(2,3,6);
imshow(op51);
title({'Final Binary Output', 'After 2 dilations using disk'});

y = imfuse(x,op51);
