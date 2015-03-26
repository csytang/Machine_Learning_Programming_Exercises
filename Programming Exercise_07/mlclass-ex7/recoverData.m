function X_rec = recoverData(Z, U, K)
%RECOVERDATA Recovers an approximation of the original data when using the 
%projected data
%   X_rec = RECOVERDATA(Z, U, K) recovers an approximation the 
%   original data that has been reduced to K dimensions. It returns the
%   approximate reconstruction in X_rec.
%

% You need to return the following variables correctly.
X_rec = zeros(size(Z, 1), size(U, 1));

%X_rec : 50 by 2 matrix;
%K = 1
%size(Z, 1) = 50;
%size(U, 1) = 2;
%Z 50 by 1
%j = 2;


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the approximation of the data by projecting back
%               onto the original space using the top K eigenvectors in U.
%
%               For the i-th example Z(i,:), the (approximate)
%               recovered data for dimension j is given as follows:
%                    v = Z(i, :)';
%                    recovered_j = v' * U(j, 1:K)';
%
%               Notice that U(j, 1:K) is a row vector.
%               

%this file is edited by Chris TANG (csytang@comp.polyu.edu.hk)


for i = 1:size(Z,1),
    v = Z(i,:)';% i = 1 to 50
    for j = 1:size(U,1);
        X_rec(i,j) = v' * U(j,1:K)';% v' 1 by 1 U(j,1:K)
    end;
end;

% =============================================================

end
