% Mousebrain

close all
img=imread('C:\Users\Ione Fine\Desktop\mousebrain\img2.tif',1);
img=double(img(:, :, 2)); % B&W;
subplot(2, 2, 1)
imagesc(img); colormap(gray);
subplot(2,2,2)
hist(img(:));

% write a loop that keep asking for input and changing the image
% accordingly until you hit q
thr=input('What threshold ...');
subplot(2,2,3)
imgT=double(img);imgT = imgT(:);
imgT(imgT<=thr)=0;
imgT(imgT>thr)=1;
imgT=reshape(imgT, size(img));
img(:, :, 3)=imgT;
subplot(2,2,3)
imagesc(img)
% end of the loop
return
mask = zeros(size(img));
mask(25:end-25,25:end-25) = 1;
bw = visboundaries(img);
figure(2)
imshow(bw);
%h=contour(img, 1);
%plot(h( 1, :),h ( 2, :) ,'Color', 'r')