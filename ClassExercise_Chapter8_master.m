%% Questions for Chapter 8
%% Q 8.1 nonanStats

% Write a function that calculates the mean, standard deviation and the standard error of the mean of the values in a vector x 
% which can deal with NaN (yes, I know it already exists). The function should carry out the following steps:

% a) Make a new vector y that contains the values of x that are not NaNs.

% b) Set the variable m to the mean of y using the mean function.

% c) Set the variable s to the standard deviation of y using the std function.

% d) Set the variable sem to the standard error of the mean of y by dividing s by the square root of the length of y.

% e) Turn these steps in to a function called nonanStats that should start like this:

[m,s,sem] = nonanStats(x)

%%Q 8.2 Modifying SineInAperture

%Modify the files SineInAperture, and the function MakeSineAperture to make this image. 
%The parameters you need to know are these:

sflist=[1 2 3 4]; 
% spatial frequency in cycles per image
radlist=[1 1.5 2 3  ];
phaselist=[0 pi/2 pi 3*pi/4];
orientationlist=[0    0.7854    1.5708    2.3562];

%The contrast of the Gabors are:
contrast = [0.2000    0.3333    0.4667    0.6000
            0.3333    0.4667    0.6000    0.7333
            0.4667    0.6000    0.7333    0.8667
            0.6000    0.7333    0.8667    1.0000];

% The Gaussian width is the radius/2.
% (Hint: The Gabors are windowed with both a Gaussian and a circular aperture.)


