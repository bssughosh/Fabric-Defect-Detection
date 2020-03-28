clc;
clear all;
close all;

%% First Row
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Special\\img\\1.JPG');
subplot(3,2,1);
imshow(x);
title('Fabric 1');

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

y = imfuse(x,op51);
subplot(3,2,2);
imshow(y);
title('Output 1');

%% Second Row
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Special\\img\\2.JPG');
subplot(3,2,3);
imshow(x);
title('Fabric 2');

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

y = imfuse(x,op51);
subplot(3,2,4);
imshow(y);
title('Output 2');

%% Third Row
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Special\\img\\3.JPG');
subplot(3,2,5);
imshow(x);
title('Fabric 3');

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

y = imfuse(x,op51);
subplot(3,2,6);
imshow(y);
title('Output 3');


















% %%%% Second Column
% x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\2.JPG');
% subplot(4,4,3);
% imshow(x);
% title('Fabric 2');
% 
% x=rgb2gray(x);
% 
% level = graythresh(x);
% H1 = im2bw(x,level);
% 
% SE = strel('square', 4);
% op1 = imerode(H1, SE);
% op2 = imdilate(op1, SE);
% 
% SE1 = strel('diamond', 3);
% op11 = imerode(op2, SE1);
% 
% SE2 = strel('disk', 3, 0);
% op21 = imdilate(op11, SE2);
% op31 = imerode(op21, SE2);
% 
% op41 = imdilate(op31, SE2);
% op51 = imdilate(op41, SE2);
% 
% y = imfuse(x,op51);
% subplot(4,4,4);
% imshow(y);
% title('Output 2');
% 
% %% Second Row
% %%%% First Column
% x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\3.JPG');
% subplot(4,4,5);
% imshow(x);
% title('Fabric 3');
% 
% x=rgb2gray(x);
% 
% level = graythresh(x);
% H1 = im2bw(x,level);
% 
% SE = strel('square', 4);
% op1 = imerode(H1, SE);
% op2 = imdilate(op1, SE);
% 
% SE1 = strel('diamond', 3);
% op11 = imerode(op2, SE1);
% 
% SE2 = strel('disk', 3, 0);
% op21 = imdilate(op11, SE2);
% op31 = imerode(op21, SE2);
% 
% op41 = imdilate(op31, SE2);
% op51 = imdilate(op41, SE2);
% 
% y = imfuse(x,op51);
% subplot(4,4,6);
% imshow(y);
% title('Output 3');
% 
% %%%% Second Column
% x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\4.JPG');
% subplot(4,4,7);
% imshow(x);
% title('Fabric 4');
% 
% x=rgb2gray(x);
% 
% level = graythresh(x);
% H1 = im2bw(x,level);
% 
% SE = strel('square', 4);
% op1 = imerode(H1, SE);
% op2 = imdilate(op1, SE);
% 
% SE1 = strel('diamond', 3);
% op11 = imerode(op2, SE1);
% 
% SE2 = strel('disk', 3, 0);
% op21 = imdilate(op11, SE2);
% op31 = imerode(op21, SE2);
% 
% op41 = imdilate(op31, SE2);
% op51 = imdilate(op41, SE2);
% 
% y = imfuse(x,op51);
% subplot(4,4,8);
% imshow(y);
% title('Output 4');
% 
% %% Third Row
% %%%% First Column
% x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\5.JPG');
% subplot(4,4,9);
% imshow(x);
% title('Fabric 5');
% 
% x=rgb2gray(x);
% 
% level = graythresh(x);
% H1 = im2bw(x,level);
% 
% SE = strel('square', 4);
% op1 = imerode(H1, SE);
% op2 = imdilate(op1, SE);
% 
% SE1 = strel('diamond', 3);
% op11 = imerode(op2, SE1);
% 
% SE2 = strel('disk', 3, 0);
% op21 = imdilate(op11, SE2);
% op31 = imerode(op21, SE2);
% 
% op41 = imdilate(op31, SE2);
% op51 = imdilate(op41, SE2);
% 
% y = imfuse(x,op51);
% subplot(4,4,10);
% imshow(y);
% title('Output 5');
% 
% %%%% Second Column
% x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\6.JPG');
% subplot(4,4,11);
% imshow(x);
% title('Fabric 6');
% 
% x=rgb2gray(x);
% 
% level = graythresh(x);
% H1 = im2bw(x,level);
% 
% SE = strel('square', 4);
% op1 = imerode(H1, SE);
% op2 = imdilate(op1, SE);
% 
% SE1 = strel('diamond', 3);
% op11 = imerode(op2, SE1);
% 
% SE2 = strel('disk', 3, 0);
% op21 = imdilate(op11, SE2);
% op31 = imerode(op21, SE2);
% 
% op41 = imdilate(op31, SE2);
% op51 = imdilate(op41, SE2);
% 
% y = imfuse(x,op51);
% subplot(4,4,12);
% imshow(y);
% title('Output 6');
% 
% %% Fourth Row
% %%%% First Column
% x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\7.JPG');
% subplot(4,4,13);
% imshow(x);
% title('Fabric 7');
% 
% x=rgb2gray(x);
% 
% level = graythresh(x);
% H1 = im2bw(x,level);
% 
% SE = strel('square', 4);
% op1 = imerode(H1, SE);
% op2 = imdilate(op1, SE);
% 
% SE1 = strel('diamond', 3);
% op11 = imerode(op2, SE1);
% 
% SE2 = strel('disk', 3, 0);
% op21 = imdilate(op11, SE2);
% op31 = imerode(op21, SE2);
% 
% op41 = imdilate(op31, SE2);
% op51 = imdilate(op41, SE2);
% 
% y = imfuse(x,op51);
% subplot(4,4,14);
% imshow(y);
% title('Output 7');
