function [ mat ] = putinaperture(mat, rad, backlum)
% takes a matrix and windows it with a circular aperture
% of radius rad
% [ mat ] = putinaperture( mat,rad, backlum )

[X, Y]=meshgrid(linspace(-pi, pi, size(mat,1)));
mat(find(X.^2 +Y.^2 >rad^2))=backlum;
end

