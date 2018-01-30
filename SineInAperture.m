%SineInAperture

clear all
close all
amp=.5
rad=1;
sf=6;
x=linspace(-pi, pi, 100);

sinewave = sin(x * sf);
plot(x, sinewave);

oneM=ones(size(sinewave));
sinewave2D = amp * (oneM' * sinewave);
sinewave2D_scaled=((sinewave2D+1)*127.5)+1;
image(sinewave2D_scaled); 
colormap(gray(256))

[X, Y]=meshgrid(linspace(-pi, pi, 100));
ind=find(X.^2 +Y.^2 <rad^2);
sinewave2D_scaled(ind)=128.5;
image(sinewave2D_scaled);


return


for r=1:length(x)
    for c=1:length(x)
        if x(r)^2 +x(c)^2 <rad^2
            sinewave2D_scaled(r,c)=128.5;
        end
    end
end
image(sinewave2D_scaled);
colormap(gray(256))




