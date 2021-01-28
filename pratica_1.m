close all
clear all

degrade = zeros(256,40);

for i=1:size(degrade, 1)
  for j=1:size(degrade, 2)
    degrade(i,j) = i;
   end
 end

 degrade = uint8(degrade);
 
 figure(1)
 imshow(degrade)

 
 im = imread("./lena_.png");
 
 for i=1:size(im,1)
   for j=1:size(im,2)
     im2(i,j) = 0.3*im(i,j,1) + 0.59*im(i,j,2) + 0.11*im(i,j,3);
   endfor
 endfor

 figure(2)
 imshow(im)
 
 figure(3)
 imshow(im2)
 
 
 for i=1:size(im2, 1)
   for j=1:size(im2, 1)
     saida2(i,j) = im2(i,j)-(size(im2,1)/2-j);
   endfor
 endfor
 
 figure(4)
 imshow(saida2);
 
 
 for i=1:size(im, 1)
   for j=1:size(im, 2)
     im4(i,j) = 1.4 * im2(i,j);
     im5(i,j) = 0.6 * im2(i,j);
   endfor
 endfor

 figure(5)
 imshow(im4);
 
 figure(6)
 imshow(im5);
 
 for i=1:size(im, 1)
   for j=1:size(im, 2)
     negativo(i, j) = uint8(255 - im(i,j));
   endfor
 endfor
 
 
 for i=1:size(im, 1)
   for j=1:size(im, 2)
     if((i > 177 && i < 400) && (j > 152 && j < 400))
      rost_negativo(i, j) = uint8(255 - im(i,j));
     else
      rost_negativo(i, j, 1) = im(i,j, 1);
      rost_negativo(i, j, 2) = im(i,j, 2);
      rost_negativo(i, j, 3) = im(i,j, 3);
     endif
   endfor
 endfor
 
 figure(7)
 imshow(negativo);
 
 figure(8)
 imshow(rost_negativo);
 
 imwrite(degrade, "./degrade.png");
 imwrite(im2, "lena_gray.png");
 imwrite(saida2, "lena_degrade.png");
 imwrite(im4, "lena_40perBright.png");
 imwrite(im5, "lena_40perDark.png");
 imwrite(negativo, "lena_negativo.png");
 imwrite(rost_negativo, "lena_faceNega.png");