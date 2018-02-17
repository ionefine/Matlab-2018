function [ grating ] = putinaperture(grating)
% takes a matrix and windows it with a circular aperture
% of radius rad
% [ mat ] = putinaperture( mat,rad, backlum )

[X, Y]=meshgrid(linspace(-pi, pi, ...
    size(grating.img,1)));

if strcmp(grating.ap,'circular')
    grating.img(find(X.^2 +Y.^2 >grating.rad^2))=0;
elseif strcmp(grating.ap, 'gaussian')
    grating.img = grating.img.*exp(-(X.^2+Y.^2)/grating.rad.^2);
else
    errordlg('Error in function putinaperture, aperture type not recognized')
end

end

