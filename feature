function [X_phi]=feature(X,D,sigma)

M = size(X,2);
N = size(X,1);
randn('state',1);
w= mvnrnd(zeros(M,1),sigma*eye(M),D);
% b=2*pi*rand(D,1);

Z = zeros(N,D);
% for j=1:numel(D)
%     D=D(j);
for i=1:N
    for j=1:D
        if mod(j,2)~=0 %%%%
               Z(i,j)=sqrt(1/(0.5*D))*cos(w(j,:)*X(i,:)');
        else
               Z(i,j)=sqrt(1/(0.5*D))*sin(w(j,:)*X(i,:)');
        end
    end
end
% Z=Z';
% end


% mean=[0,0];
% sigma=[1,0;0,1];
% w = mvnrnd(mean, sigma, D);
% b = 2*pi*rand(D,1);
% 
% Z = zeros(N, D);
% test_Z =zeros(K,D);
% for j = 1: numel(D)
%     D = D(j);
%     for i=1:N
%        Z(i,:) = sqrt(2/D) * cos(w*X(i,:)'+b)';  
%     end
%     for i=1:K
%        test_Z(i,:) = sqrt(2/D)*cos(w*Y(i,:)'+b)';  
%     
%     end
% end
