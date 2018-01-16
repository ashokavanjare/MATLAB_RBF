function Y = rbfn_test(F, W, K, MU, SIGMA)
%RBFN_TEST Summary of this function goes here
%   Detailed explanation goes here

%% Test RBF
N          = size(F,1);                   % n = Number of Pixels
H          = zeros(N,K);
for k      = 1:K
h          = RBFKernel(F,MU,SIGMA,N,k);
H(:,k)     = h;
end
Y          = H*W;                         % Output
Y (Y > 1)  = 1;                           % Hard Saturation
Y (Y < 0)  = 0;
Y          = Y > 0.5;                     % Threshold

end

