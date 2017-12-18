function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly

mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));


% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

x1=mean(X(:,1));
x2=mean(X(:,2));
range1=max(X(:,1))-min(X(:,1));
range2=max(X(:,2))-min(X(:,2));
mu=[x1 x2];
sigma=[range1 range2];
X(:,1)=(X(:,1).-x1)/range1;
X(:,2)=(X(:,2).-x2)/range2;
X_norm=X;



% ============================================================

end
