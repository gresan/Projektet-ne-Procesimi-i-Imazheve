% Load the original binary image and the eroded binary image
original_bw = imread('original_image.png');
dilated_bw = imread('dilated_image.png');

% Convert to grayscale (if necessary)
if size(original_bw, 3) == 3
    original_bw = rgb2gray(original_bw);
end
if size(dilated_bw, 3) == 3
    dilated_bw = rgb2gray(dilated_bw);
end

% Convert to binary images using Otsu's threshold
original_bw = im2bw(original_bw, 0.8);
dilated_bw = im2bw(dilated_bw, 0.8);

% Define a structuring element to try
se = strel('square',26);

% Perform dilation using the structuring element
output_bw = imdilate(original_bw, se);

% Show image
figure, imshow(output_bw);

