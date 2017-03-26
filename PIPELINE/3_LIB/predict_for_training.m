function p = predict_for_training(theta, X)

    m = size(X, 1); % Number of training examples

    p = zeros(m, 1);

    r = sigmoid(X*theta);

    p = (r>=0.5);


end
