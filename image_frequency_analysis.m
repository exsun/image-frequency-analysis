clc
clear variables
close all

% EX3

% Read the input image
A = imread('images/hotel.tif');
imshow(A);
title('Original Image');
figure;

% Convert the RGB image to YCbCr color space
I = rgb2ycbcr(A);

% Extract the Luma (Y) component
I = I(:,:,1);
imshow(I);
title('Grayscale version of YCbCr Image');

% Perform 2D FFT on the grayscale image
img_fft = fft2(I);

% Filtering 1: Apply an average filter (3x3)
filter_avg = (1/9) * ones(3, 3);
img_filtered1 = imfilter(I, filter_avg);

% Perform 2D FFT on the filtered image
img_fftf1 = fft2(img_filtered1);

% Display the results for Filtering 1
figure;
imshow(uint8(img_filtered1));
title('Filtered Image using Average filter, size 3x3');

figure;
subplot(2, 2, 1)
imshow(fftshift(log10(img_fft)),[]);
title('The SHIFTED MAG FFT IMAGE');
subplot(2, 2, 2)
imshow(fftshift(log10(img_fftf1)),[]);
title('The SHIFTED log MAG FFT FILTERED IMAGE');
subplot(2, 2, 3)
imshow(fftshift(angle(img_fft)),[]);
title('The SHIFTED phase FFT Image');
subplot(2, 2, 4)
imshow(fftshift(angle(img_fftf1)),[]);
title('The SHIFTED phase FFT FILTERED Image');

% Filtering 2: Apply a custom filter (3x3)
filter_avg2 = [1, -1, 1; -1, 1, -1; 1, -1, 1];
img_filtered2 = imfilter(I, filter_avg2);

% Perform 2D FFT on the second filtered image
img_fftf2 = fft2(img_filtered2);

% Display the results for Filtering 2
figure;
imshow(uint8(img_filtered2));
title('Filtered Image using 2nd filter, size 3x3');

figure;
subplot(2, 2, 1)
imshow(fftshift(log10(img_fft)),[]);
title('The SHIFTED MAG FFT IMAGE');
subplot(2, 2, 2)
imshow(fftshift(log10(img_fftf2)),[]);
title('The SHIFTED log MAG FFT FILTERED IMAGE2');
subplot(2, 2, 3)
imshow(fftshift(angle(img_fft)),[]);
title('The SHIFTED phase FFT Image');
subplot(2, 2, 4)
imshow(fftshift(angle(img_fftf2)),[]);
title('The SHIFTED phase FFT FILTERED Image2');

