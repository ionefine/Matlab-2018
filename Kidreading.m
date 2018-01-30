clear all

for k=1:10 % number kids in the study
    kid10(k, :)=[2:7]+randn(1, 6);
    kid5(k, :)=[2:7]+randn(1, 6)+3;
end
subplot(1, 2, 1)
image(kid5+1); colormap(gray(14))
subplot(1, 2, 2)
image(kid10+1); colormap(gray(14))
