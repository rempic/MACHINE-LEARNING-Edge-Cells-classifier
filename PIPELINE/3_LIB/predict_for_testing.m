function [class, prob, h_theta_x] = predict_for_testing(theta, X, resc_mean, resc_stdev)

    m = size(X, 1); % Number of testing examples

    p = zeros(m, 1);

    % log transform and apply the rescaling as done for the training 
    for i=1:m
        X2(i,:) = (log(X(i,:))-resc_mean')./resc_stdev';
    end
    
    % add bias value (X0=1)
    X2 = [ones(size(X2,1),1),X2]; %add X0
    
    h_theta_x = X2*theta;
    
    prob = sigmoid(h_theta_x);

    class = (prob>=0.5);
end