%SineInAperture

clear all; close all
amp=1; sf=6; rad=pi; size_ap = 100;
backLum=128.5;

%% build the array
naps = 2; sep = 50;
bigMatSize = [(naps+1)*sep] + [size_ap*naps];
bigMat=backLum* ones(bigMatSize);
stpt=[sep (sep*2)+size_ap];
for i=1:naps
    for j=1:naps
        rad=(i*j)/2; sf=3+(mod(i+j,2)*3);
        [ sw2D ] = make2Dsinewave( amp, size_ap, sf);
        [ sw2D ] = putinaperture( sw2D,rad, backLum)
            bigMat(stpt(i):stpt(i)+size_ap-1, stpt(j):stpt(j)+size_ap-1) = sw2D;
    end
end
imagesc(bigMat)


