function [ stim ] = make2Dsinewave(stim)
% function [ sw2D ] = make2Dsinewave(stim)
% creates a two dimensional sinewave
% [ sw2D ] = make2Dsinewave(stim)
% INPUT: stim contains the fields:
%       orient, amp, sf, npix, type
% OUTPUT: returns a sinewave or some other
% more complicated stimulus 
% scaled between -1 and 1

[X, Y]=meshgrid(linspace(-pi, pi, stim.npix));
if strcmp(stim.type, 'grating')
    R = (cos(stim.orient) * X) + (sin(stim.orient) * Y);
    stim.img =stim.amp *  sin(R .* stim.sf);
elseif strcmp(stim.type, 'radial')
    stim.img=sin(stim.sf*sqrt(X.^2+Y.^2));
elseif strcmp(stim.type, 'spokes')
    stim.img=sin(stim.sf * atan2(Y, X));
elseif strcmp(stim.type, 'spiral')
    R=sqrt(X.^2+Y.^2);
    T=atan2(Y, X);
    stim.img=sin(stim.sf * 2*pi* R + T);
else
    disp([stim.type, ' type not recognized'])
end

end

