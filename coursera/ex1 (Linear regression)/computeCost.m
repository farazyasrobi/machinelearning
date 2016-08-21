function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly 
J = 0;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%hyp = 0;
%for i = 1:m
%	hyp = 0;
%	for j = 1:n
%		hyp = hyp + theta(j, 1) * X(i, j);
%	end
%	J = J + ((hyp-y(i, 1)) .^ 2);
%end

temp = (X * theta) - y; 
J = temp' * temp;
J = J / (2*m);
% =========================================================================

end
