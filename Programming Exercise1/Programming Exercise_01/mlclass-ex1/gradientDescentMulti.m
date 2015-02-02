function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    
    % Edited by Chris TANG
    
    % alpha is a number 1*1 
    % m is a number 1*1
    % theta is a n*1(n is number of feature, here n is 3)
    % htheta is a m * 1
    % X is a m by n (n is 3 here)
    
    
    
    htheta = X*theta - y;% m by 1 vector
    [rtheta,ctheta] = size(theta);
    theta = theta - alpha/m * (htheta'*X)';
    
    % ============================================================

    
    J_history(iter) = computeCostMulti(X, y, theta);
    

end

end
