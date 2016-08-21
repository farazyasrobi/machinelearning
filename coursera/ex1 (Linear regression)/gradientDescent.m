function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta);
hyp = 0;
temp = 0;

J_history = zeros(num_iters, 1);

tempTheta = zeros(n, 1);
for iter = 1:num_iters
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


	for j = 1:n
		temp = 0;
		for i = 1:m
			hyp = 0;
			for u = 1:n
				hyp = hyp + theta(u) * X(i, u);
			end
			temp = temp + ((hyp - y(i)) * X(i, j));
		end
		tempTheta(j, 1) = theta(j, 1) - (alpha/m)*(temp);
	end

    % ============================================================
	theta = tempTheta;
    % Save the cost J in every iteration    
	J_history(iter) = computeCost(X, y, theta);

end

end
