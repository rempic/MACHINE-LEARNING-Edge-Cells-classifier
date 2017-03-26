function [J, grad] = costFunction(theta, X, y)

    m = length(y); % number of training examples

    J = 0;
    grad = zeros(size(theta));


    %

    J = -1/m * sum( log(sigmoid(X*theta)).*y + (1.-y).*log(1.-sigmoid(X*theta)), 'omitnan' )

    n = length(grad);

    for i= 1:n
        grad(i) = (1/m) * sum( (sigmoid(X*theta) - y) .* X(:,i) , 'omitnan')
    end



end
