function [J, grad] = costFunctionReg(theta, X, y, lambda)

    m = length(y); % number of training examples

    J = 0;
    grad = zeros(size(theta));

    n = length(grad);

    J = -1/m * sum( log(sigmoid(X*theta)).*y + (1.-y).*log(1.-sigmoid(X*theta)) );

    J = J + (lambda/(2*m)) * sum((theta(2:n).^2));


    grad(1) = (1/m) * sum( (sigmoid(X*theta) - y) .* X(:,1) );

    for i= 2:n
        grad(i) = (1/m) * sum( (sigmoid(X*theta) - y) .* X(:,i) ) + (lambda/m) * theta(i);
    end


end
