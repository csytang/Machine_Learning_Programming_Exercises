function [theta] = normalEqn(X, y)

%
%theta: 3 by 1 matrix
%X: m by n matrix m's training examples n is 3(# of features)
%y: m by 1 matrix

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================

theta = (pinv(X'*X))*X'*y; 

% ============================================================

end
