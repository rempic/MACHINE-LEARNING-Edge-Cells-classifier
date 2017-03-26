

addpath('2_DATA')
addpath('3_DATA')
addpath('4_DATA')
addpath('3_LIB')

%% Train the logistic regression classifier

% INPUT: DATA/5_data_training_transf.txt

% OUTPUT: DATA/OUT_features_names.mat
% OUTPUT: DATA/OUT_features_theta.mat

m3_TRAINING


%% Test the trained classifier

% INPUT: DATA/OUT_features_names.mat
% INPUT: DATA/OUT_features_theta.mat
% INPUT: DATA/6_data_training_param_MEAN.txt
% INPUT: DATA/7_data_training_param_STDEV.txt
% INPUT: DATA/4_data_test.txt

% OUTPUT: prediction

m3_TESTING
