clc;
clear all;
close all;

x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Special\\img\\3.JPG');
subplot(2,3,1);
imshow(x);
title('Original Fabric');
x=rgb2gray(x);
level = graythresh(x);
H1 = im2bw(x,level);

% for i=1:512
%     for j=1:512
%         H1(i,j) = 1 - H1(i,j);
%     end
% end

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
SE2 = strel('disk', 3, 0);
SE3 = strel('disk', 6, 0);
SE4 = strel('rectangle', [5 2]);
SE5 = strel('square', 5);

op11 = imerode(op2, SE5);
op21 = imdilate(op11, SE5);

subplot(2,3,4);
imshow(op21);
title('After erosion and dilation using square');

op31 = imdilate(op21, SE1);
op41 = imdilate(op31, SE2);

subplot(2,3,5);
imshow(op41);
title({'After 2 dilations using', 'diamond and disk respectively'});

op51 = imerode(op41, SE3);
op61 = imdilate(op51, SE4);

subplot(2,3,6);
imshow(op61);
title({'Final Binary Output', 'After erosion and dilation using', 'disk and rectangle respectively'});

y = imfuse(x,op61);