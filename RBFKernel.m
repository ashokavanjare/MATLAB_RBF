function H = RBFKernel(F,MU,SIGMA,N,k)
%% RBF Kernel
if k == 1
 H         = ones(N,1);       
else
 H         = zeros(N,1);
  for i    = 1:N
    H(i,1) = exp((-1/2)*(F(i,:)'-MU(:,k))'*(inv(SIGMA(:,:,k)))*(F(i,:)'-MU(:,k)));
  end
end
end