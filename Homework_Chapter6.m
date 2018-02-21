

%% Koffka
clear all
clrs.white=1;
clrs.lightGray=.8;
clrs.midGray=.6;
clrs.darkGray=.4;

sz.ringWidth=1/3;
sz.imgSize = 100;

[X,Y]=meshgrid(linspace(-1,1,sz.imgSize));
R=sqrt(X.^2+Y.^2);

Rinner=zeros(size(R));
Rinner(find(R<sz.ringWidth/2))=1;

Router=zeros(size(R));
Router(find(R<1.5*sz.ringWidth))=1;

Rring=Router-Rinner;
RringL=logical(Router-Rinner);
%Router=R<.8; shortcut

imagesc(Rring)

bigMat=ones(size(R)) * clrs.darkGray;
bigMat(:, 51:end) = clrs.lightGray;

bigMat(find(Rring)) = clrs.midGray;
image((bigMat * 255)+1);
colormap(gray(256)); axis square

bigMatLeft=bigMat(:,1:size(bigMat,2)/2);
bigMatRight=bigMat(:,size(bigMat,2)/2+1:end);

addFac=round(sz.imgSize*sz.ringWidth/2);
bigbigMat=clrs.white * ones(sz.imgSize,sz.imgSize+addFac);
bigbigMat(:,1:size(bigMatLeft,2))=bigMatLeft;
bigbigMat(:,size(bigMatLeft, 2)+addFac+1:end)=bigMatRight;
imagesc(bigbigMat)
colormap(gray)

finalMat=ones(sz.imgSize+addFac, sz.imgSize);
finalMat(1:size(bigMatLeft, 1), 1:size(bigMatLeft,2))=bigMatLeft;
finalMat(addFac+1:addFac+size(bigMatLeft, 1), ...
   size(bigMatLeft,2)+1:end)=bigMatRight;
imagesc(finalMat)



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

% Rlong=zeros(size(X));
% 
% for i=1:size(Rlong,1)
%     for j=1:size(Rlong,2)
%      sz.ringWidth   if sqrt(X(i,j)^2 + Y(i,j)^2)<0.75
%             Rlong(i,j)=1;
%         end
%     end
% end
% imagesc(Rlong);