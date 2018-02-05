
%%Q 4.1: Making matrices

%Create the following matrices without typing in the numbers by hand:
A = [1     1     1     1     1
     1     1     1     1     1
     2     2     2     2     2
     2     2     2     2     2
     2     2     2     2     2];
 A([1:2], :)=1;
 A([3:5], :)=2;
 A
 

B = [1     1     0     0     1
     1     1     0     0     1
     1     1     0     0     1
     1     1     0     0     1];
B=zeros(4, 5);
B(:, [1 2 5])=1
 
C = [1     1     1     1     1
     1     0     0     1     1
     1     0     0     1     1
     1     0     0     1     1
     1     1     1     1     1
     1     1     1     1     1];

 C=ones(6, 5);
 C(2:4, 2:3)=0;
 
D = [1     1     1     1     1
     2     2     2     2     2
     3     3     3     3     3
     4     4     4     4     4
     5     5     5     5     5];
 D=repmat([1:5]', 1, 5)
 for i=1:5
     D(i, :)=i;
 end
[1:5]'*ones(1, 5)

E = [2     2     2     2     2     2
     1     2     2     2     2     2
     1     1     2     2     2     2
     1     1     1     2     2     2
     1     1     1     1     2     2
     1     1     1     1     1     2];
 

 E=ones(6);
 for i=1:6
     E(i, i:end)=2;
 end

 
  E=ones(6);
 for i=1:6
     
     for j=1:6
         if i<=j
             E(i, j)=2;
         end
     end
 end
 

% (This one has a Hint if you get stuck, see Hints section)

F = [0     5    10    15    20
     0     5    10    15    20
     0     5    10    15    20
     0     5    10    15    20
     0     5    10    15    20];
 
 F=zeros(5);
 for i=1:5
     F(:, i)=(i*5)-5;
 end
 
  for i=1:5
     F(:, i)=5*(i-1);
  end
 
 for i=0:4
     F(:, i+1)=5*i;
 end
 
%(This one has a Hint too.)

G = [1     6    11    16    21
     2     7    12    17    22
     3     8    13    18    23
     4     9    14    19    24
     5    10    15    20    25];
G=reshape(1:25,5, 5);
for i=1:5
    G(i,:)=i:5:[20+i];
end
for j=1:5
    G(:, j)=[1:5]+[5*(j-1)]
end

 
H = [1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0];

 H=zeros(8);
 H(:,1:2:end)=1;
 
I = [1     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0
     0     0     1     0     0     0     0     0
     0     0     0     0     0     0     0     0
     0     0     0     0     1     0     0     0
     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     1     0
     0     0     0     0     0     0     0     0];

 J=zeros(8);
 for i=1:2:8
     J(i,i)=1;
 end
 
 for j=1:2:8
     if i==j
         J(i,j)=1;
     end
 end
 
 
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
 
 for i=1:5
     K(i,:)=[1:5] * i;
 end
 

L = [1     2     3     4     5
     6     7     8     9    10
    11    12    13    14    15
    16    17    18    19    20
    21    22    23    24    25];

L=reshape(1:25, 5, 5)';

%% Q 4.2: 3d matrices

% a) Create a 3x3x3 matrix of zeros and set the very middle of the 3-d matrix to be a value of 1. 
M=zeros(3, 3, 3); M(2, 2, 2)=1;
% b) Create a 5x5x5 matrix of zeros and set the middle 3x3x3 cube to 1.
N=zeros(5, 5, 5); N(2:4, 2:4, 2:4)=1;

%% Q 4.3: sub2ind and ind2sub

% a)  Suppose you have a 4x3 matrix (4 rows and 3 columns).  
% What is the index into the element that is in the 3rd row and 2nd column?
sub2ind([4, 3], 3, 2)
% b) For the same size matrix, what is the row and column for the element with an index of 7?

 
%% Q 4.4: logical operations

% a) Write a script so that if a variable 'x' is positive it prints the string 
% 'x is positive'
% And if x is negative the script prints the string
% 'x is negative'

x=-4;
if x>0
    disp('x is positive')
elseif x<0
    disp('x is negative')
end

% b) Write a statement that is true if the variable 'x' is either less than 2 or greater than pi.
x=-4;
if x<2 || x>pi
    disp('this is true')
end
% c) Write a statement that is true if either x is greater than 2 
% and y is less than 4, or if z is equal to zero.
x=4; y=2; z=1;
if (x>2 && y<4) || z==0
    disp('this is true')
end

%% Q 4.5 While loops

%Write a script that repeatedly rolls two dice using this command:

roll = ceil(6*rand(1,2));

roll=randi(6, 2)

roll=[Inf Inf];
ct=1;
while sum(roll)>2
    roll = ceil(6*rand(1,2));
  %  roll=randi(6, [2, 1])
    ct=ct+1;
end
disp(['rolled ', num2str(ct), ' times']);
    
% and counts the number of rolls until [1,1] (‘snake eyes’) comes up.
