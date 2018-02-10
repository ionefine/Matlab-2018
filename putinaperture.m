function [ mat ] = putinaperture(mat, stim)
% takes a matrix and windows it with a circular aperture
% of radius rad
% [ mat ] = putinaperture( mat,rad, backlum )

[X, Y]=meshgrid(linspace(-pi, pi, size(mat,1)));

if strcmp(stim.ap,'circular')
    mat(find(X.^2 +Y.^2 >stim.rad^2))=0;
elseif strcmp(stim.ap, 'gaussian')
    mat = mat.*exp(-(X.^2+Y.^2)/stim.rad.^2);
else
    errordlg('Error in function putinaperture, aperture type not recognized')
end

end

