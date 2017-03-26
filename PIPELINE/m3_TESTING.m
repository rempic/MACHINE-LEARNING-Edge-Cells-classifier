%% Test the classifier

%% Load the testing data 
d = importdata('2_DATA/2_data_test.txt');

n  = size(d.data,2);
X = d.data(:,1:n-1);
y = d.data(:,n);

%% Load rescaling param 
resc_mean = importdata('3_DATA/3_data_training_param_MEAN.txt');
resc_stdev = importdata('3_DATA/3_data_training_param_STDEV.txt');

resc_mean = resc_mean.data(1:end-1)
resc_stdev = resc_stdev.data(1:end-1)

%% load params 
names = load('4_DATA/OUT_features_names.mat');
theta = load('4_DATA/OUT_features_theta.mat');

names = names.OUT_features_names;
theta = theta.OUT_features_theta;


%% calculate the prediction
[class,prob, h_theta_x] = predict_for_testing(theta, X, resc_mean, resc_stdev);

fprintf('Classification based on training data Accuracy: %f\n', mean(double(class == y)) * 100);


%% graph
figure;
plot(h_theta_x(y==0), prob(y==0), 'ob')
hold on;
plot(h_theta_x(y==1), prob(y==1), 'or')

