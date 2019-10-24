clear
close all
clc
%%%%%%%%%%%%%%%%%图像%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 I=imread('3096.jpg');
figure;imshow(I);title('(a)原始图像');imwrite(I,'1.tiff','tiff','Resolution',300);%保存为tif

%灰度图分割要转化
if size(I,3) == 3
   I=rgb2gray(I);
else
end

%% 彩色或者灰图像去噪，均值滤波（邻域均值）
r=3;
[I_mean,I_median]=compute_mean_median(I,r) ;
figure;imshow(I_mean,[]);title('局部均值');

I_lc=LC_His(I); %LC 

 figure; imshow(I_lc);title('显著性图像');
