clc;
clear all;
close all;

%% First Row
%%%% First Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\1.JPG');
subplot(4,4,1);
imshow(x);
title('Fabric 1');
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
subplot(4,4,2);
imshow(y);
title('Output 1');

%%%% Second Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\2.JPG');
subplot(4,4,3);
imshow(x);
title('Fabric 2');
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
subplot(4,4,4);
imshow(y);
title('Output 2');

%% Second Row
%%%% First Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\3.JPG');
subplot(4,4,5);
imshow(x);
title('Fabric 3');
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
subplot(4,4,6);
imshow(y);
title('Output 3');

%%%% Second Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\4.JPG');
subplot(4,4,7);
imshow(x);
title('Fabric 4');
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
subplot(4,4,8);
imshow(y);
title('Output 4');

%% Third Row
%%%% First Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\5.JPG');
subplot(4,4,9);
imshow(x);
title('Fabric 5');
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
subplot(4,4,10);
imshow(y);
title('Output 5');

%%%% Second Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\6.JPG');
subplot(4,4,11);
imshow(x);
title('Fabric 6');
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
subplot(4,4,12);
imshow(y);
title('Output 6');

%% Third Row
%%%% First Column
x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking\\img\\7.JPG');
subplot(4,4,13);
imshow(x);
title('Fabric 7');
x=rgb2gray(x);
level = graythresh(x);
H1 = im2bw(x,level);

% for i=1:512
%     for j=1:512
%         H1(i,j) = 1 - H1(i,j);
%     end
% end

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
subplot(4,4,14);
imshow(y);
title('Output 7');




















% %% Second Row
% x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking2\\img\\2.JPG');
% subplot(3,2,3);
% imshow(x);
% title('Fabric 2');
% x=rgb2gray(x);
% level = graythresh(x);
% H1 = im2bw(x,level);
% 
% % for i=1:512
% %     for j=1:512
% %         H1(i,j) = 1 - H1(i,j);
% %     end
% % end
% 
% SE = strel('square', 4);
% op1 = imerode(H1, SE);
% op2 = imdilate(op1, SE);
% 
% SE1 = strel('diamond', 3);
% SE2 = strel('disk', 3, 0);
% SE3 = strel('disk', 6, 0);
% SE4 = strel('rectangle', [5 2]);
% SE5 = strel('square', 5);
% 
% op11 = imerode(op2, SE5);
% op21 = imdilate(op11, SE5);
% 
% op31 = imdilate(op21, SE1);
% op41 = imdilate(op31, SE2);
% 
% op51 = imerode(op41, SE3);
% op61 = imdilate(op51, SE4);
% 
% y = imfuse(x,op61);
% subplot(3,2,4);
% imshow(y);
% title('Output 2');
% 
% %% Third Row
% x=imread('D:\\Sem 6\\IP\\FabricDefectDetection\\Checking2\\img\\3.JPG');
% subplot(3,2,5);
% imshow(x);
% title('Fabric 3');
% x=rgb2gray(x);
% level = graythresh(x);
% H1 = im2bw(x,level);
% 
% % for i=1:512
% %     for j=1:512
% %         H1(i,j) = 1 - H1(i,j);
% %     end
% % end
% 
% SE = strel('square', 4);
% op1 = imerode(H1, SE);
% op2 = imdilate(op1, SE);
% 
% SE1 = strel('diamond', 3);
% SE2 = strel('disk', 3, 0);
% SE3 = strel('disk', 6, 0);
% SE4 = strel('rectangle', [5 2]);
% SE5 = strel('square', 5);
% 
% op11 = imerode(op2, SE5);
% op21 = imdilate(op11, SE5);
% 
% op31 = imdilate(op21, SE1);
% op41 = imdilate(op31, SE2);
% 
% op51 = imerode(op41, SE3);
% op61 = imdilate(op51, SE4);
% 
% y = imfuse(x,op61);
% subplot(3,2,6);
% imshow(y);
% title('Output 3');