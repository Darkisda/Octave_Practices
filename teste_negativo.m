close all
clear all

lena = imread("./lena_.png")

for i=1:size(lena,1)
  for j=1:size(lena,2)
    negativo(i,j) = uint8(255 - lena(i,j);
  endfor
endfor

figure(1)
imshow(lena)

figure(2)
imshow(negativo)

imwrite(negativo, "negativo.png");