%% Training the logistic regression classifier


%% LOAD DATA
d = importdata('3_DATA/3_data_training_transf.txt');

%% ORGANIZE
n  = size(d.data,2);

Xo = d.data(:,1:n-1);

X = d.data(:,1:n-1);
X = [ones(size(X,1),1),X]; %add X0
y = d.data(:,n);


%% run the logistic regression
% Set regularization parameter lambda to 1 (you should vary this)
lambda = 0.3;
initial_theta = zeros(size(X,2), 1);
options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta_out, J, exit_flag] = 	fminunc(@(t)(costFunctionReg(t, X, y, lambda)), initial_theta, options);




%% Given the Feature vector values shows the probability to be edge and border (sigma)
k0=1;
k1=1;
for i = 1:size(X,1)
    if y(i)==0
        x0(k0) =[ 1 Xo(i,:)] * theta_out;
        y0(k0) = sigmoid(x0(k0));
        k0=k0+1;
    end
    if y(i)==1
        x1(k1) =[ 1 Xo(i,:)] * theta_out;
        y1(k1) = sigmoid(x1(k1));
        k1=k1+1;
    end
end

figure;
plot(x0,y0, 'xb');
hold on;
plot(x1,y1, 'or');

p = predict_for_training(theta_out, X);

fprintf('Classification based on training data Accuracy: %f\n', mean(double(p == y)) * 100);

% show the results 
OUT_features_names = d.textdata(1:end-1)'

OUT_features_theta = theta_out

save('4_DATA/OUT_features_names.mat', 'OUT_features_names')
save('4_DATA/OUT_features_theta.mat', 'OUT_features_theta')
