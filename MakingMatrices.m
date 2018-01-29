%% making matrices
% provides cunning examples of ways to make matrices
% written IF 1/22/2018

mat1=zeros(5,4);
mat2=mat1;
mat2(1:5,3)=1

mat2=mat1;
mat2(1:end, 3)=6

mat2=mat1;
mat2(:, 3)=6

mat2=mat1;
mat2(4, :)=1


%% now for something interesting
mat=zeros(4);
for i=1:4
    mat(i, i)=i
    pause
end
%%

tic
mat=zeros(6);
for i=1:6
    mat(:,i)=[-2  0 -1 2 1  3]
    pause
end
toc

%%

mat=zeros(5);
for i=1:5
    mat(:, i)=[ 0 0 1 1 0 ]+i
end
 disp(i)   
 
 %%
        
mat=zeros(3, 4)
for i=[ 1  3]
    for j=1:4 
        mat(i, j)=i+j
    end
end
 %%
mat=zeros(3,4)
for iRow=1:3
    for iCol=1:4
        mat(iRow, iCol)=((iRow-1)*4)+iCol;
    end
end

%%
mat=zeros(3,4)
for iRow=1:3
        mat(iRow, :)=((iRow-1)*4)+[1:4];
end
mat


mat2=reshape(1:12,4, 3)' 

mat=[ 1 2 3; 4 5 6; 7 8 9];
vect=mat(:)

%% repmat

x=[1 5 3 2 5]
size(x)
X=repmat(x, 3, 2)
size(x)


X=[ 2 3 4; 5 6 7];
size(X)
Y=repmat(X, 3, 2)

%%

rmat=rand(5,5)
rmat2=rand(5,5)

for iRow=1:size(rmat, 1)
    for iCol=1:size(rmat, 2)
        if rmat(iRow,iCol)<rmat2(iRow,iCol)
            rmat(iRow,iCol)=rmat2(iRow,iCol);
        end
    end
end
rmat


%% 

n1=3
if round(n1)==n1
    disp('n is a round number')
end


%%
n=1
if n<0
    disp('bye bye sweetie');
elseif n
     disp('hi there cutie pants');
else
    disp(' hi there dearie');
end

%% 
n=-1
if n>0 && n<=0.6
    disp('muchas smoochas');
elseif n<=0
    disp('Garfield sucks')
    
    if n<=-.6
        disp('I love Calvin and Hobbes')
    end
else
    disp('snuggle-puppy');
end

%%
n=0;
while n<1
    n=randn(1);
    disp(n)
end

%%
tic
while toc<3
    ;
end









