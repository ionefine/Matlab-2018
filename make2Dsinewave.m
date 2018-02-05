function [ sw2D ] = make2Dsinewave( amp, size_ap, sf)
% creates a two dimensional sinewave
% [ sw2D ] = make2Dsinewave( amp, freq, size_ap, sf)
% 
% returns a sinewave scaled between 1-256

x = linspace(-pi, pi, size_ap);
sinewave = sin(x * sf);
oneM=ones(size(sinewave));
sw2D = amp * (oneM' * sinewave);
sw2D=((sw2D+1)*127.5)+1;
end

