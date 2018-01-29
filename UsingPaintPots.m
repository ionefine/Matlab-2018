% UsingColormaps

img=1:10;
figure(1)
pp=ones(10,3);
image(img)
colormap(pp)
axis off; 

for i=1:10
    pp(i,:) = i/10
    colormap(pp)
    pause
end
