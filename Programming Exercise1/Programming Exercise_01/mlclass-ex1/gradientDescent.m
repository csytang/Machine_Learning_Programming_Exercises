function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters % inside each iteration, we have to update the value of theta according to the 

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % % 
    htheta = X*theta;% htheta is vector of m*2 * 2*1 --> m*1
    cost = htheta - y;
    temp0 = cost'*X(:,1);
    theta0 = theta(1) - alpha/m * temp0;
     
    temp1 = cost'*X(:,2);
    theta1 = theta(2)- alpha/m * temp1;
    theta = [theta0;theta1];



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
