%% 程序分享 
% 西安邮电大学图像处理团队-郝浩
% 个人博客 www.aomanhao.top
% Github https://github.com/AomanHao
%--------------------------------------

clear
close all
clc
%% %%%%%%%%%%%%%%%图像%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 I=imread('3096.jpg');

if size(I,3) == 3
   I=rgb2gray(I);
else
end
I=im2double(I);
figure;imshow(I);title('(a)原始图像')
imwrite(I,'1.jpg');
% I=I;%不加噪声
%I=imnoise(I,'speckle',deta_2);
% I=imnoise(I,'salt & pepper',0.05); %加噪图
% I=imnoise(I,'gaussian',0,0.01); % 加高斯噪声
figure;imshow(I);title('(b)加噪图像');
imwrite(I,'2.jpg');
[m,n]=size(I);

%% 傅里叶变换
F=fft2(I);
F=fftshift(F);%对傅里叶变换后的图像进行象限转换
F=abs(F);%傅里叶变换后的结果为复数，求复数的模
T=log(F+1);%log(X+1)则将所有的x值，映射成正数，数值范围也更小一些
figure;imshow(T,[]);


