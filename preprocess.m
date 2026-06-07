function [gray,medianImg,equalized,lpf,hpf,spectrum] = preprocess(img)

img = imresize(img,[256 256]);

% Gray Conversion
gray = rgb2gray(img);

% Median Filter
medianImg = medfilt2(gray,[3 3]);

% Histogram Equalization
equalized = adapthisteq(medianImg);

% Low Pass Filter
lpf = imgaussfilt(equalized,2);

% High Pass Filter
kernel = [-1 -1 -1; -1 8 -1; -1 -1 -1];

hpf = imfilter(double(equalized),kernel);

hpf = mat2gray(hpf);

% Frequency Spectrum
F = fftshift(fft2(double(equalized)));

spectrum = log(1 + abs(F));

spectrum = mat2gray(spectrum);

end