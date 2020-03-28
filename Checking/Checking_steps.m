clc;
clear all;
close all;

figure();
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\7.JPG');
subplot(2,3,1);
imshow(x);
title('Original Fabric');
x=rgb2gray(x);
level = graythresh(x);
H1 = im2bw(x,level);

for i=1:512
    for j=1:512
        H1(i,j) = 1 - H1(i,j);
    end
end

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

subplot(2,3,5);
imshow(op21);
title('After dilation using disk');

SE3 = strel('rectangle', [2 5]);
op31 = imdilate(op21, SE3);

subplot(2,3,6);
imshow(op31);
title({'Final Binary Output', 'After dilation using rectangle'});

y = imfuse(x,op31);
