

%% funky
[X,Y]=meshgrid(linspace(-1,1,500));
T1=atan2(Y,X) * 180/pi;
T1=mod(T1, 30);
T2=mod(-T1+15,30);

R=X.^2+Y.^2;
R=R<.5;
T1(R)=T2(R);
imagesc(T1)



return















%% Koffka

white=1;
lightGray=.8;
midGray=.6;
darkGray=.4;

ringWidth=1/3;
[X,Y]=meshgrid(linspace(-1,1,100));
% R=sqrt((X.^2)+(Y.^2));

imagesc(R)

% Rlong=zeros(size(X));
% 
% for i=1:size(Rlong,1)
%     for j=1:size(Rlong,2)
%      ringWidth   if sqrt(X(i,j)^2 + Y(i,j)^2)<0.75
%             Rlong(i,j)=1;
%         end
%     end
% end
% imagesc(Rlong);
Rinner=zeros(size(R));
Rinner(find(R<ringWidth/2))=1;

Router=zeros(size(R));
Router(find(R<1.5*ringWidth))=1;



Rring=Router-Rinner;
RringL=logical(Router-Rinner);
%Router=R<.8; shortcut

imagesc(Rring)

bigMat=ones(size(R)) * darkGray;
bigMat(:, 51:end) = lightGray;

bigMat(find(Rring)) = midGray;
image((bigMat * 255)+1);
colormap(gray(256)); axis square

bigMatLeft=bigMat(:,1:size(bigMat,2)/2);
bigMatRight=bigMat(:,size(bigMat,2)/2+1:end)

addFac=round(100*ringWidth/2);
bigbigMat=white * ones(100,100+addFac);
bigbigMat(:,1:size(bigMatLeft,2))=bigMatLeft;
bigbigMat(:,size(bigMatLeft, 2)+addFac+1:end)=bigMatRight;
imagesc(bigbigMat)
colormap(gray)

finalMat=ones(100+addFac, 100);
finalMat(1:size(bigMatLeft, 1), 1:size(bigMatLeft,2))=bigMatLeft;
finalMat(addFac+1:addFac+size(bigMatLeft, 1), ...
   size(bigMatLeft,2)+1:end)=bigMatRight;
imagesc(finalMat)
