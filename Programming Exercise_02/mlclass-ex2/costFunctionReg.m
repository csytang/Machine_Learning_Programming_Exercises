function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% This file is edited by Chris TANG(csytang@comp.polyu.edu.hk)


htheta = X*theta;% compute the original htheta[linear regress];
g = sigmoid(htheta);% embed it into the sigmoid function to get the hypothesis under logstic regression
logg = log(g);
logmg = log(1-g);
thetapa = power(theta,2);
reg = lambda/(2*m)* sum(thetapa(2:size(thetapa),1)); 
J = 1/m * sum(-(y.*logg)-((1-y).*logmg))+reg;% cost function;

grad = 1/m * ((g-y)' * X)';
for i = 2:size(grad),
    grad(i,1) = grad(i,1)+ lambda/m * theta(i);
end;

% =============================================================

end
