function [ grating ] = make2Dsinewave(grating)
% function [ sw2D ] = make2Dsinewave(stim)
% creates a two dimensional sinewave
% [ sw2D ] = make2Dsinewave(stim)
% INPUT: stim contains the fields:
%       orient, amp, sf, npix, type
% OUTPUT: returns a sinewave or some other
% more complicated stimulus 
% scaled between -1 and 1

[X, Y]=meshgrid(linspace(-pi, pi, grating.npix));
if strcmp(grating.type, 'grating')
    R = (cos(grating.orient) * X) + (sin(grating.orient) * Y);
    grating.img =grating.amp *  sin(R .* grating.sf);
elseif strcmp(grating.type, 'radial')
    grating.img=sin(grating.sf*sqrt(X.^2+Y.^2));
elseif strcmp(grating.type, 'spokes')
    grating.img=sin(grating.sf * atan2(Y, X));
elseif strcmp(grating.type, 'spiral')
    R=sqrt(X.^2+Y.^2);
    T=atan2(Y, X);
    grating.img=sin(grating.sf * 2*pi* R + T);
else
    disp([grating.type, ' type not recognized'])
end

end

