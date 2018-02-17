%SineInAperture

clear all; close all

frame.apSize = 100; % number of pixels in aperture
frame.backLum = 128.5;
frame.apNum = [3 4]; frame.apSep = 50;

apList={'circular', 'gaussian'};
apTypeList={'spiral', 'spokes' 'radial' 'grating'};
stim(1, 1).amp = .5;  stim(1,1).sf = 3;
stim(1, 1).orient = 45; 
stim(1, 1).rad=3; % remember aperture defined between +/- pi

stim(1, 1).npix=frame.apSize;

stim(1, 2).amp = 1; stim(1, 2).sf=2; 
stim(1, 2).orient=90; stim(1, 2).type='spokes'; 
stim(1, 2).rad=2; 
stim(1, 2).npix=frame.apSize;

stim(2, 1).amp = 3; stim(2, 1).sf=4; 
stim(2, 1).orient=90; stim(2, 1).type='radial'; 
stim(2, 1).npix=frame.apSize;

stim(2, 2).amp = .5; stim(2, 2).sf=2; 
stim(2, 2).orient=-45; stim(2, 2).type='grating'; 
stim(2, 2).npix=frame.apSize;


%% build the array

bigMatSize(1) = [(frame.apNum(1)+1)*frame.apSep] + [frame.apSize * frame.apNum(1)];
bigMatSize(2) = [(frame.apNum(2)+1)*frame.apSep] + [frame.apSize * frame.apNum(2)];

bigMat=frame.backLum* ones(bigMatSize(1), bigMatSize(2));
for r=1:frame.apNum(1)
    stptRow(r)=(frame.apSep * r) + (frame.apSize * (r-1));
end
for c=1:frame.apNum(2)
    stptCol(c)=(frame.apSep * c) + (frame.apSize * (c-1));
end

stpt=[frame.apSep (frame.apSep*2)+frame.apSize];
for r=1:frame.apNum(1)
    for c=1:frame.apNum(2)
        tmp=stim(1, 1);
        tmp.ap=apList{randi(2)};
        tmp.type=apTypeList{randi(4)};
        [ tmp ] = make2Dsinewave(tmp);
        [ tmp ] = putinaperture(tmp);
         tmp.img=((tmp.img+1)*127.5)+1;
        bigMat(stptRow(r):stptRow(r) + frame.apSize-1, ...
            stptCol(c):stptCol(c)+frame.apSize-1) = tmp.img;     
    size(bigMat)
    end
end
image(bigMat); colormap(gray(256))


