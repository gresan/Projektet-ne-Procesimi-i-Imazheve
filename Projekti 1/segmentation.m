I = imread('Toys_Candy.jpg');
imshow (I);

Igray = rgb2gray(I):
imshow (Igray);

level = 0.67;
Ithresh = im2bw(Igray, level);
imshowpair(I, Ithresh, 'montage');
levelr = 0.63;

levelg = 0.5;

levelb = 0.4;
il=im2bw (rmat, levelr):
i2=im2bw (gmat, levelg);
i3=im2bw (bmat, levelb);
Isum = (i1&i2&i3);

% Plot the data

subplot(2,2,1), imshow(i1):;
title('Red Plane'):;

subplot(2,2,2), imshow(i2):
title('Green Plane');

subplot(2,2,3), imshow(i3):
title('Blue Plane');

subplot(2,2,4), imshow(Isum);
title('Sum of all the planes');

Icomp = imcomplement (Isum);
Ifilled = imfill(Icomp, 'holes');
figure, imshow(Ifilled);

se = strel('disk', 25);
Iopenned = imopen(Ifilled, se);
imshow (Iopenned) ;

Iregion = regionprops(Iopenned, 'centroid');
(labeled, numObjects] = bwlabel (Iopenned, 4);

stats = regionprops (labeled, 'Eccentricity', 'Area’)
areas = [stats.Area);

eccentricities = [stats.Eccentricity];

idxofskittles = find(eccentricities);
statsDefects = stats(idxOfskittles):

figure, imshow(I);
hold on;
for idx = 1 : length(idxOfSkittles)
hold on;
end
if idx > 10
title(['There are ', num2str(numbjects), ' objects in the image');
end
hold off;

