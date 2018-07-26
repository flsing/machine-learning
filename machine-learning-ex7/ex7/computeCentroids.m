function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

centroids = zeros(K, size(X,2));

for i = 1:K
    centroids(i, :) = mean(X(find(idx == i), :));
end

% my solution was given full marks in submission but was not working for a Part
% so i found this code online https://github.com/everpeace/ml-class-assignments/blob/master/ex7.K-Means_Clustering_and_PCA/mlclass-ex7/computeCentroids.m
% for testing purposes

%for k = 1:K
%  num_k = 0;
%  sum = zeros(n, 1);
%  for i = 1:m
%    if ( idx(i) == k )
%      sum = sum + X(i, :)';
%      num_k = num_k + 1;
%    end
% end
%  centroids(k, :) = (sum/num_k)';
%end


% =============================================================


end
