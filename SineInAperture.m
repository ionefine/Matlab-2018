%SineInAperture

clear all; close all

frame.apSize = 100; % number of pixels in aperture
frame.backLum = 128.5;
frame.apNum = 2; frame.apSep = 50;

stim(1, 1).amp = .5;  stim(1).sf = 3;
stim(1, 1).orient = 45; stim(1).type = 'spiral'; % or spokes, radial, circular
stim(1, 1).rad=3; % remember aperture defined between +/- pi
stim(1, 1).ap = 'circular'; % or gaussian
stim(1, 1).npix=frame.apSize;

stim(1, 2).amp = 1; stim(2).sf=2; 
stim(1, 2).orient=90; stim(2).type='spokes'; 
stim(1, 2).rad=2; stim(2).ap = 'circular';
stim(1, 2).npix=frame.apSize;

stim(2, 1).amp = 3; stim(3).sf=4; 
stim(2, 1).orient=90; stim(3).type='radial'; 
stim(2, 1).rad=2; stim(3).ap = 'circular';
stim(2, 1).npix=frame.apSize;

stim(2, 2).amp = .5; stim(4).sf=2; 
stim(2, 2).orient=-45; stim(4).type='grating'; 
stim(2, 2).rad=2; stim(4).ap = 'gaussian';
stim(2, 2).npix=frame.apSize;

%% build the array

bigMatSize = [(frame.apNum+1)*frame.apSep] + ...
    [frame.apSize * frame.apNum];
bigMat=frame.backLum* ones(bigMatSize);
stpt=[frame.apSep (frame.apSep*2)+frame.apSize];
for i=1:frame.apNum
    for j=1:frame.apNum
        [ sw2D ] = make2Dsinewave(stim(i, j));
        [ sw2D ] = putinaperture(sw2D,stim(i,j));
         sw2D=((sw2D+1)*127.5)+1;
        bigMat(stpt(i):stpt(i) + size_ap-1, ...
            stpt(j):stpt(j)+size_ap-1) = sw2D;     
    end
end
image(bigMat); colormap(gray(256))


