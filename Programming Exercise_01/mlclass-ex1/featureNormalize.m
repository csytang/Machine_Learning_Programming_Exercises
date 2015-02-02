function [X_norm, mu, sigma] = featureNormalize(X)

X_norm = X; % X is a m*3 matrix(47*3)
mu = zeros(1, size(X, 2));% mu is a 1*3 
sigma = zeros(1, size(X, 2)); % sigma is a 1*3

% ====================== YOUR CODE HERE ======================


% Following code is edited by Chris TANG

 
    mu = mean(X); % by column, mu stores the mean of X.
    sigma = std(X);
    temp = ones(length(X),1);% please notice the minus only works for same dimension. 
    
    X_norm = (X - (temp*mu))./(temp*sigma);
    
    

% ============================================================

end
