%% Hints for homework 5
% this has hints for parts of the homework that are proving intransigent

% Help! I can't find shuffle!
% these days shuffle is easily avoided, replaced by the Matlab function
% randperm
vect = 1:10;

shufflevect=vect(randperm(length(vect)));

% OR you could write your own function! Open a function window, delete
% everything, paste this in and save it as something sensible.
% 
% function out = shuffle(in)
% 
% out = in(randperm(length(in)));
% 
% end

%% Q 5.1 HELP I can't get one of the diagonals

% hint
x = ones(6);
for i=1:6
    for j=1:6
        x(i, 6-(i-1))= 2; 
    end
end

%% Miguel

% if you get rid of the last data point you could reshape your data ....



