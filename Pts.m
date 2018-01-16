function [dataTr,dataTs, LablTr, LablTs] = Pts

%% Generate Points and Labels
Sigma  = [15 5; 5 15];
Num    = 200;
f1     = mvnrnd([0 5], Sigma, Num); 
f2     = mvnrnd([15 8], Sigma, Num); 
sz1    = length(f1);
sz2    = length(f2);
c1     = zeros(sz1, 1);
c2     = ones(sz2, 1);
F      = [f1; f2];
C      = [c1; c2];

%% Separate into Train and Test data
ind    = randperm(length(F));
dataTr = F(ind(1 : sz1), 1:2);
dataTs = F(ind(sz1 + 1 : end), 1:2);
LablTr = C(ind(1 : sz1), 1);
LablTs = C(ind(sz1 + 1 : end), 1);

%% You can see the data by enabeling the following lines
% hold on
% plot(dataTr(LablTr == 0, 1), dataTr(LablTr == 0, 2), 'o')
% plot(dataTr(LablTr == 1, 1), dataTr(LablTr == 1, 2), 'or')
% plot(dataTs(LablTs == 0, 1), dataTs(LablTs == 0, 2), 's')
% plot(dataTs(LablTs == 1, 1), dataTs(LablTs == 1, 2), 'sr')
% hold off
% legend('train: class 1','train: class 2','test: class 1','test: class 2')
% grid on


end
