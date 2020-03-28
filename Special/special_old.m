clc;
clear all;
close all;

x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Special\\9.JPG');
x=rgb2gray(x);
level = graythresh(x);
H1 = im2bw(x,level);

for i=1:512
    for j=1:512
        H1(i,j) = 1 - H1(i,j);
    end
end
figure();
imshow(H1);
SE = strel('square', 4);
op1 = imerode(H1, SE);
op2 = imdilate(op1, SE);
figure();
imshow(op2);
SE3 = strel('disk', 6, 0);
SE1 = strel('diamond', 3);
SE2 = strel('disk', 3, 0);
SE5 = strel('square', 5);
SE4 = strel('rectangle', [5 2]);
op11 = imerode(op2, SE5);
op31 = imdilate(op11, SE5);
op31 = imdilate(op31, SE1);
op31 = imdilate(op31, SE2);
op31 = imerode(op31, SE3);
op31 = imdilate(op31, SE4);
figure();
imshow(op31);


% % SE1 = strel('disk', 3, 0);
% SE1 = strel('diamond', 3);
% op11 = imerode(op2, SE1);
% figure();
% imshow(op11);
% % op11 = imerode(op11, SE1);
% % op21 = imdilate(op2, SE1);
% SE2 = strel('disk', 3, 0);
% SE3 = strel('disk', 6, 0);
% SE4 = strel('rectangle', [5 2]);
% SE5 = strel('square', 5);
% op31 = imdilate(op11, SE2);
% op31 = imerode(op31, SE5);
% op31 = imdilate(op31, SE5);
% op31 = imdilate(op31, SE1);
% op31 = imdilate(op31, SE2);
% op31 = imerode(op31, SE3);
% op31 = imdilate(op31, SE4);
% % op41 = imdilate(op31, SE2);
% % op51 = imdilate(op41, SE2);
% % op51 = imdilate(op51, SE2);
% figure();
% imshow(op31);

y = imfuse(x,op31);
figure();
imshow(y);