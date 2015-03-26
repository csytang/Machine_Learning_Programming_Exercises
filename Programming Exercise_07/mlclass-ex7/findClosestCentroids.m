function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K 
% the number of centroids;
K = size(centroids, 1);


% the number of training examples; 
m = size(X,1);



% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

costtmp = ones(size(X,1),1)*10000;

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

%this file is edited by Chris TANG(csytang@comp.polyu.edu.hk)

for j = 1:m,
    
    
    for i = 1:K,
        tempdis = X(j,:)-centroids(i,:);
        if (sum(power(tempdis,2)) < costtmp(j,:)),
            costtmp(j,:) = sum(power(X(j,:)-centroids(i,:),2));
            idx(j) = i;
        end;
    end;


end;

% =============================================================

end

