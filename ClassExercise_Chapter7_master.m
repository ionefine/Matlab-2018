%% 7.1 Structures containing arrays, and an array of structures

% Given the vector:

vect = 1:10;

% a) Make a structure x that has a field called vect that contains the vector above so that x.vect contains:

% x.vect

% ans =
%      1     2     3     4     5     6     7     8     9    10

%b) Make an array of structures y, each containing a field vect with a single number so that when you type y you get:

% y
 
% y = 
 
% 1x10 struct array with fields:
%      vect

% and 
 
% y(1)
 
% ans = 
%     vect: 1

% y(2)

% ans = 
%    vect: 2

% etc

%% Q 7.2 Cell arrays

% a) Make a cell array called bigCell that contains in order:

% the vector vect from the problem 7.1

% the structure x from problem 7.1a

% the structure y from problem 7.1b

% the vector 11:20

% the string ‘This is the fifth element of bigCell’

% the string ‘Matlab is great!’

% b) Make a new cell array called lessBigCell that contains the 1st, 4th, and 6th element of bigCell 

% c) Add together the 1st  and 4th element of bigCell

% d) Concatenate the 1st and 4th elements of bigCell to create the matrix:

M= [1     2    3      4     5     6     7     8     9    10
 11    12    13    14    15    16    17    18    19    20];

% You might need the hint below.

% e) Make a new string str that contains the string ‘This is strings’, pulled from the 5th and 6th elements of bigCell.
