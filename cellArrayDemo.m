data={[1], 'no response' ,[2], [1], 'no response' ,[4]};

idx=strcmp(data, 'no response');

num_data=cat(1,data{[find(~idx)]});

stim(1).var=5;
stim(2).var = 6;
stim(3).var=6;

var=cat(2,stim(1:3).var)