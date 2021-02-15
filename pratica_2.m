close all
clear all

pkg load image

im = imread('./rgb.jpg');

figure('Name', 'Original em rgb');
imshow(im);

imVermelho = imVerde = imAmarelo = uint8(zeros(size(im,1), size(im,2), 3));

figure('Name', 'Vermelho');
imshow(imVermelho);

figure('Name', 'Verde');
imshow(imVerde);

figure('Name', 'Amarelo');
imshow(imAmarelo);

for i=1:size(imVermelho, 1)
  for j=1:size(imVermelho,2)
    if( (im(i,j,1) > 120) && (im(i,j,2) < 126) && (im(i,j,3) < 126) )
      imVermelho(i,j,:) = im(i,j,:);
    else 
      imVermelho(i,j,:) = 255;
    end
  endfor
endfor

figure('Name', 'Vermelho 2');
imshow(imVermelho);

for i=1:size(imVerde, 1)
  for j=1:size(imVerde,2)
    if( (im(i,j,1) < 100) && (im(i,j,2) > 100) && (im(i,j,3) < 100) )
      imVerde(i,j,:) = im(i,j,:);
    else 
      imVerde(i,j,:) = 255;
    end
  endfor
endfor

figure('Name', 'Verde 2');
imshow(imVerde);

for i=1:size(imAmarelo, 1)
  for j=1:size(imAmarelo,2)
    if( (im(i,j,1) > 126) && (im(i,j,2) > 126) && (im(i,j,3) < 126) )
      imAmarelo(i,j,:) = im(i,j,:);
    else 
      imAmarelo(i,j,:) = 255;
    end
  endfor
endfor

figure('Name', 'Amarelo 2');
imshow(imAmarelo);

imwrite(imVermelho, 'rgb_red.png');
imwrite(imVerde, 'rgb_green.png');
imwrite(imAmarelo, 'rgb_yellow.png');

