clear all
close all

pkg load image;

im = uint8(zeros(20,20));

for i=1:size(im,1)
  for j=6:15
    im(i,j) = 255;
  end
end

for i=6:15
  for j=1:size(im,2)
    im(i,j) = 126;
  end
end

%im

imColor(:,:,1) = im;
imColor(:,:,2) = im;
imColor(:,:,3) = im;

%imColor

figure(1)
imshow(imColor)

imColor(1,1,1) = 0;
imColor(1,1,2) = 0;
imColor(1,1,3) = 255;

figure(2)
imshow(imColor)

for i=1:5
  for j=16:20
    imColor(i,j,1) = 255;
    imColor(i,j,2) = 0;
    imColor(i,j,3) = 0;
  end  
end

figure(3)
imshow(imColor)

figure(4)
imshow(imColor(:,:,1))

figure(5)
imshow(imColor(:,:,2))

figure(6)
imshow(imColor(:,:,3))

for i=1:5
  for j=16:20
    imColor(i,j,1) = 255;
    imColor(i,j,2) = 0;
    imColor(i,j,3) = 255;
  end  
end

figure(7)
imshow(imColor(:,:,1))

figure(8)
imshow(imColor(:,:,2))

figure(9)
imshow(imColor(:,:,3))

figure(10)
imshow(imColor)


