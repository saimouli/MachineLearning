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

h= sigmoid(X * theta); 
theta0= [0; theta(2:end)];

left_er= -y'*log(h);
right_er= (1-y)'*log(1-h);
result=left_er-right_er;
J= (1/m)*sum(result)+ (lambda/(2*m))* sum(theta0.^2);

%gradient %updating values from j>= 1. We don't want to reqularize the
%theta0 term 

grad = (1/m) * (X' * (h - y) + lambda * theta0);

% =============================================================

end
