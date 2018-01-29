% excitingcolormaps

img=reshape(1:64, 8, 8)
image(img); colormap(gray(64));
axis square
axis off
drawnow
pause

for i=1:200
    pp=rand(64, 3)
    colormap(pp)
    drawnow;
end
