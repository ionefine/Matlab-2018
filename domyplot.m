function [ h ] = domyplot( data,xvar,yvar )
% creates a simple scatter plot. Takes as input a data structure 
% and the field names of the x and y variable

eval(['x=data.', xvar, ';']);

eval(['y=data.', yvar, ';']);

h=plot(x, y, 'ko');
set(h, 'MarkerFaceColor', 'g','MarkerSize', 12)

for s=1:length(data.names)
    text(x(s)+2,y(s), data.names{s})
end
xlabel(xvar)
ylabel(yvar)
title([xvar, ' vs. ' yvar])


end

