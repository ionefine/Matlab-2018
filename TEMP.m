
%% Questions for Chapter 7 – Instructor version
% Q7.1 Structures containing arrays, and an array of structures
 
Given the vector:

vect = -1:2:10;

and the string:

 ‘Halloween is my favorite holiday’. 

a) Make a structure x that has a field called vect that contains the vector above so that x.vect contains:

x.vect

ans =

-1     1     3     5     7     9

and x has a second field called halloween which contains the string above so that x.halloween contains

x.halloween

ans =

Halloween is my favorite holiday

b) Make an array of structures week each containing a field name day so that when you type week you get: 

week

week =

1x7 struct array with fields:

  day

and

week(1)

ans =

  day: ‘Monday’

week(2)

ans =

  day: ‘Tuesday’

etc.


Q 7.2 Cell arrays
 

a) Make a cell array called bunchojunk that contains fields that (in order) contain the following:

1.       the vector vect from the problem 7.1 

2.       the structure week from problem 7.1b

3.       the vector 40:-3:20

4.       a 6 x6 matrix of random numbers (randn) 

5.       the string ‘this is a bunch of junk’

b) Make a new cell array called lessjunk that contains the 1st and 4th element of bunchojunk

c) Add together the 3rd element from the 1st field and the 1th element of the 3rd field of bunchojunk.

d) Concatenate the 1st and 4th elements of bunchojunk to create the matrix:

ans =

   -1.0000    1.0000    3.0000    5.0000    7.0000    9.0000

   -0.8746   -0.4157    0.7509    0.5401   -2.2293   -1.8605

   -0.1964   -1.1279   -0.0942    0.1640    0.3037   -0.3630

    0.1002    0.3253    0.1591    0.2193   -0.2950   -0.1553

    2.4007   -0.8850   -0.2579    0.3246    0.3587   -1.3864

    1.2243   -0.1895    1.3618   -0.6633    0.1342   -0.3333

   -0.0010   -2.9027   -0.1277    1.1352   -0.3639    0.0843 

 	 
View less instructions