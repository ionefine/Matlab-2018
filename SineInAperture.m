%SineInAperture

clear all; close all

% should stay fixed across apertures
size_ap = 100; % number of pixels in aperture
backLum = 128.5;

stim(1).amp = .5;  stim(1).sf=3;
stim(1).orient=45; stim(1).type='spiral'; 
stim(1).rad=3; stim(1).ap = 'circular'; 
stim(1).npix=size_ap;
% remember aperture defined between +/- pi

stim(2).amp = 1; stim(2).sf=2; 
stim(2).orient=90; stim(2).type='spokes'; 
stim(2).rad=2; stim(2).ap = 'circular';
stim(2).npix=size_ap;

stim(3).amp = 3; stim(3).sf=4; 
stim(3).orient=90; stim(3).type='radial'; 
stim(3).rad=2; stim(3).ap = 'circular';
stim(3).npix=size_ap;

stim(4).amp = .5; stim(4).sf=2; 
stim(4).orient=-45; stim(4).type='grating'; 
stim(4).rad=2; stim(4).ap = 'gaussian';
stim(4).npix=size_ap;
%% build the array
naps = 2; sep = 50;
bigMatSize = [(naps+1)*sep] + [size_ap*naps];
bigMat=backLum* ones(bigMatSize);
stpt=[sep (sep*2)+size_ap];
for i=1:naps
    for j=1:naps
        [ sw2D ] = make2Dsinewave(stim((i-1)*2+j));
        [ sw2D ] = putinaperture(sw2D,stim((i-1)*2+j));
         sw2D=((sw2D+1)*127.5)+1;
        bigMat(stpt(i):stpt(i) + size_ap-1, ...
            stpt(j):stpt(j)+size_ap-1) = sw2D;     
    end
end
image(bigMat); colormap(gray(256))


