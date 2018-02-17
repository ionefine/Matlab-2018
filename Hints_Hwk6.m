

[X,Y]=meshgrid(-pi:.1:pi);
R=X.^2+Y.^2;

R2=R<1.2.^2;

image(R2)
cmap=[1 0 0; 0 1 0];
colormap(cmap)

M=ones(size(X));
N=1+M(:, round(1:size(M,2)/2));
Q=[M N M];
imagesc(Q)

F=mod(atan2(X, Y), pi/4);
imagesc(F); colormap(gray(256))


