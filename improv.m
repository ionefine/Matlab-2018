
[num, txt, all]=xlsread('improvXLS.xlsx', 'A2:D6');

data.names =all(:, 1);
data.iqscore = [all{:, 2}];
data.height =[all{:, 3}];
data.age = [all{:, 4}];


h=domyplot(data, 'iqscore', 'age');
