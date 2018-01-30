
%%Q 4.1: Making matrices

%Create the following matrices without typing in the numbers by hand:
A = [1     1     1     1     1
     1     1     1     1     1
     2     2     2     2     2
     2     2     2     2     2
     2     2     2     2     2];

B = [1     1     0     0     1
     1     1     0     0     1
     1     1     0     0     1
     1     1     0     0     1];

C = [1     1     1     1     1
     1     0     0     1     1
     1     0     0     1     1
     1     0     0     1     1
     1     1     1     1     1
     1     1     1     1     1];

D = [1     1     1     1     1
     2     2     2     2     2
     3     3     3     3     3
     4     4     4     4     4
     5     5     5     5     5];

E = [2     2     2     2     2     2
     1     2     2     2     2     2
     1     1     2     2     2     2
     1     1     1     2     2     2
     1     1     1     1     2     2
     1     1     1     1     1     2];
% (This one has a Hint if you get stuck, see Hints section)

F = [0     5    10    15    20
     0     5    10    15    20
     0     5    10    15    20
     0     5    10    15    20
     0     5    10    15    20];
%(This one has a Hint too.)

G = [1     6    11    16    21
     2     7    12    17    22
     3     8    13    18    23
     4     9    14    19    24
     5    10    15    20    25];

H = [1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0];

I = [1     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0
     0     0     1     0     0     0     0     0
     0     0     0     0     0     0     0     0
     0     0     0     0     1     0     0     0
     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     1     0
     0     0     0     0     0     0     0     0];

J = [0     1     2     3     4
     1     2     3     4     5
     2     3     4     5     6
     3     4     5     6     7
     4     5     6     7     8];
 
 for i=1:5
     J(i,:)=[0:4] + (i-1)
 end
 
    

K = [1     2     3     4     5
     2     4     6     8    10
     3     6     9    12    15
     4     8    12    16    20
     5    10    15    20    25];

L = [1     2     3     4     5
     6     7     8     9    10
    11    12    13    14    15
    16    17    18    19    20
    21    22    23    24    25];
 
%% Q 4.2: 3d matrices

% a) Create a 3x3x3 matrix of zeros and set the very middle of the 3-d matrix to be a value of 1. 

% b) Create a 5x5x5 matrix of zeros and set the middle 3x3x3 cube to 1.

%% Q 4.3: sub2ind and ind2sub

% a)  Suppose you have a 4x3 matrix (4 rows and 3 columns).  What is the index into the element that is in the 3rd row and 2nd column?

% b) For the same size matrix, what is the row and column for the element with an index of 7?
 
%% Q 4.4: logical operations

% a) Write a script so that if a variable 'x' is positive it prints the string 
% 'x is positive'
% And if x is negative the script prints the string
% 'x is negative'

% b) Write a statement that is true if the variable 'x' is either less than 2 or greater than pi.

% c) Write a statement that is true if either x is greater than 2 and y is less than 4, or if z is equal to zero.

%% Q 4.5 While loops

%Write a script that repeatedly rolls two dice using this command:

roll = ceil(rand(1,2));

% and counts the number of rolls until [1,1] (‘snake eyes’) comes up.
