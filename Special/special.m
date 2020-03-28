clc;
clear all;
close all;

x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Special\\img\\1.JPG');
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
SE2 = strel('disk', 3, 0);
SE3 = strel('disk', 6, 0);
SE4 = strel('rectangle', [5 2]);
SE5 = strel('square', 5);

op11 = imerode(op2, SE5);
op21 = imdilate(op11, SE5);
op31 = imdilate(op21, SE1);
op41 = imdilate(op31, SE2);
op51 = imerode(op41, SE3);
op61 = imdilate(op51, SE4);

y = imfuse(x,op61);