clc;
clear all;
close all;

%% First Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking2\\img\\1.JPG');
subplot(3,3,1);
imshow(x);
title('1a');

x=rgb2gray(x);

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

subplot(3,3,4);
imshow(op51);
title('1b');

y = imfuse(x,op51);
subplot(3,3,7);
imshow(y);
title('1c');

%% Second Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking2\\img\\2.JPG');
subplot(3,3,2);
imshow(x);
title('2a');

x=rgb2gray(x);

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

subplot(3,3,5);
imshow(op51);
title('2b');

y = imfuse(x,op51);
subplot(3,3,8);
imshow(y);
title('2c');

%% Third Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking2\\img\\3.JPG');
subplot(3,3,3);
imshow(x);
title('3a');

x=rgb2gray(x);

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

subplot(3,3,6);
imshow(op51);
title('3b');

y = imfuse(x,op51);
subplot(3,3,9);
imshow(y);
title('3c');