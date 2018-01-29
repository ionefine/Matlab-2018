%% Questions for Chapter 2
 
% Make sure you do these in an m-file and not the command line since many of the questions build upon the answers to earlier questions.
 
%% Q 2.1: Replacing letters in strings

% a) Start with a string containing CHEERIOS and replace the ‘C’ with an ‘O’ and the ‘R’ with a ‘P’ to spell OHEEPIOS.  

% b) Start with a string containing CHEMISTRY and replace the ‘C’ with ‘O’ and the ‘R’ with ‘B’ to spell OHEMISTBY. Try to do it in a single line.

% c) Start with string containing MACARONI AND CHEESE and replace all ‘C’s with ‘O’s and ‘I’s with ‘R’s to spell MAOARONR AND OHEESE.

%% Q 2.2: More replacing letters in strings. 

% Starting with the string: 
 
% str = ‘MACARONI AND CHEESE’
 
% a) Create a vector called id1 so that when you type:
 
 str(id1) 
 
% you get
 
% ‘MAN CHEESE’ 
% (Hint, write the phrase ‘MACARONI AND CHEESE’ on a piece of paper and number each letter)

% b) Create another vector id2 so that 

 str(id2)
 
% gives you 
% HER MIND IS CHINESE
 
%% Q 2.3: Creating vectors.

% Create the following vectors using both linspace and the colon ‘:’ technique

% a) [1 2 3 4 5 6 7 8 9 10]
 
% b) [10 12 14 16 18]
 
% c) [19 18 17 16 15]
 
% d) [10 8 6 4 2 0 -2 -4]
 
% e) [0 3.1416 6.2832 9.4248 12.5664 15.7080] 
 
% f) Type the command pi in the command window. Now do exercise e) again but using the predefined variable pi.
 
%% Q 2.4: More indexing into strings. 
 
% Start with the following string of 20 ‘a’s:
% str = 'aaaaaaaaaaaaaaaaaaaa';
 
% a) Use indexing to make every third letter in the string 'c'
 
% b) Then use indexing again to turn the string into: 'abcabcabcabcabcabcab'
 
% c) Demonstrate that the third letter in the string is a 'c'

% d) Now use indexing to turn this string into: 'abcdefabcabcabcabcab'

% e) Use indexing to turn this string into: 'abcdefabcdefabcdefab'. Try to do it in one line of code.
 
% f) Demonstrate that the 6th, 12th and 18th letters in the string are ‘f’s
 
%% Q 2.5: Indexing into vectors

% You ran an experiment where you took 40 measurements every 1.23 seconds starting 12 seconds into the experiment.
 
% Create a vector that describes the moments in time that these measurements were taken. 
 
% b) When was the fifth measurement taken? 
 
% c) Display the last measurement, using the command end.
 
  
%% Q 2.6: Still more indexing 
 
% Imagine you are running an experiment where stimuli flash onto the screen. Subjects are asked to hit the 'r' key if they see a face that looks like Russell Crowe and 'e' if they see a face that looks like Eddie Izzard. While you are piloting the experiment you make the faces alternate on every trial, so you expect the results of 40 trials to look as follows: 
 
% resp='rererererererererererererererererererere';  
 
% a) Now imagine that while you were piloting you were distracted on what you thought was the 5th trial and hit the 'k' key. So resp now looks like this:
% 
% resp='rerekererererererererererererererererere';  
 
% How would you check that it was the 5th trial that contained the 'k'?
 
% b) Replace the 'k' with an 'r'
 
% c) How would you check to see that you always pressed an 'e' for Eddie Izzard?
 
% Q 2.7: Checking your understanding 
 
% Make sure you understand what’s happening in the following examples.% 
 vect=3:10

% vect(5:-1:2)

% vect(vect(1:3))
 
% Now, create the following vector:
 
% vect = 12:-1:1
 
% Before typing anything at the Matlab prompt, guess what the output will be for:

% a) vect(1:12)

% b) vect(12:-1:1)

% c) vect([10 12 9 12 8 4]) 

% d) vect(1:2)
 
% e) vect(vect(1:2))
 
% f) vect(vect)

% g) vect(vect(vect))
