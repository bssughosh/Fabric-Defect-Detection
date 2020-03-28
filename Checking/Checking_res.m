clc;
clear all;
close all;

figure();
%% First column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\4.JPG');
subplot(3,4,1);
imshow(x);
title('4a');
x=rgb2gray(x);
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

subplot(3,4,5);
imshow(op31);
title('4b');

y = imfuse(x,op31);
subplot(3,4,9);
imshow(y);
title('4c');

%% Second Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\5.JPG');
subplot(3,4,2);
imshow(x);
title('5a');
x=rgb2gray(x);
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

subplot(3,4,6);
imshow(op31);
title('5b');

y = imfuse(x,op31);
subplot(3,4,10);
imshow(y);
title('5c');

%% Third Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\6.JPG');
subplot(3,4,3);
imshow(x);
title('6a');
x=rgb2gray(x);
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

subplot(3,4,7);
imshow(op31);
title('6b');

y = imfuse(x,op31);
subplot(3,4,11);
imshow(y);
title('6c');

%% Fourth Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\7.JPG');
subplot(3,4,4);
imshow(x);
title('7a');
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

SE3 = strel('rectangle', [2 5]);
op31 = imdilate(op21, SE3);

subplot(3,4,8);
imshow(op31);
title('7b');

y = imfuse(x,op31);
subplot(3,4,12);
imshow(y);
title('7c');