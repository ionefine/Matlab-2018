% randomwalk
nsteps=20;
timepts=0:0.1:3;

forwardspeed=.5;
noise=0.3;
stepsize=5;


footposition(1) = 0;
for i=2:length(timepts)
    footposition(i) = footposition(i-1) + ...
        forwardspeed + ...
        (noise * randn(1, 1));
    
    if footposition(i)>=stepsize
        footposition(i:length(timepts))=0;
        break; 
    end
end

plot(timepts, footposition)



