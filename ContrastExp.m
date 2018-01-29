contrast=linspace(0,1,5);
size=2:2:12;

nc=[5 6 5 6 4 ; 
    4 6 8 9 9 ;
    6 5 7  10 8; 
    3 5 8 9 10; 
    5 6 9 10 10 ; 
    6 5 8 10 9];
% image(contrast,size,  nc);
% colormap(gray(10))
% xlabel('contrast')
% ylabel('size');

set(gca, 'XTick', contrast)
set(gca, 'XTickLabel', contrast)

pc=100*nc/10;
image(pc)
pcmap=colormap(gray(100));
pcmap(1:50,:)=0;
colormap(pcmap)
