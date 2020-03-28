clc;
clear all;
close all;

figure();
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\7.JPG');
subplot(1,3,1);
imshow(x);
title('Original Fabric');
x=rgb2gray(x);
subplot(1,3,2);
imshow(x);
title('Grayscale Image');
level = graythresh(x);
H1 = im2bw(x,level);

for i=1:512
    for j=1:512
        H1(i,j) = 1 - H1(i,j);
    end
end

SE = strel('square', 4);
op1 = imerode(H1, SE);
op2 = imdilate(op1, SE);

SE1 = strel('diamond', 3);
op11 = imerode(op2, SE1);

SE2 = strel('disk', 3, 0);
op21 = imdilate(op11, SE2);

SE3 = strel('rectangle', [2 5]);
op31 = imdilate(op21, SE3);

subplot(1,3,3);
imshow(op31);
title('Final Binary Output');

y = imfuse(x,op31);
