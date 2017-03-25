# Classifier: cells at the edges

The goal of this classifier is to identify the cells at the edges of the population. An example of cells (nuclei) located at edges of the monolayer is shown below (marked in red). In this folder you find the "data preparation", the algorithm for "logistic regression" and "visualization of results"

<div style="text-align:center"><img src="./border_cell_example.png" alt="An example of cells (nuclei) located at edges of the monolayer is shown below (marked in red)"> </div>

## [Data preparation 1 (show)](https://cdn.rawgit.com/rempic/High-Throughput-Screening/master/machine_learning_classifiers/BORDERCELLS/1_DATA_PREPARATION/DATA_PREPARATION1.html)

- Clean and Visualize features and relative stats
- Transform features: substitute values and normalization of absolute values
- Shuffle and split the data-set in training and test sets
- Save trainging and test data(cross validation will be performed directly on images)

## [Data preparation 2 (show)](https://cdn.rawgit.com/rempic/High-Throughput-Screening/master/machine_learning_classifiers/BORDERCELLS/1_DATA_PREPARATION/DATA_PREPARATION2_NORM_RESCAL.html)
- Normalize distributions (e.g, log transformation)
- Rescaling features
- Save: transformed data set, mean and stdev of features to be used for testing and cross validation 

In the sub-folder "1_DATA_PREPARATION" find the files with 
  - original data
  - prepared data  
  - shuffle and split data for training and test sets
  - tranformed data (log and rescaling)
  - mean and stdev features from transformed data
  - r code: DATA_PREPARATION1.rmd, DATA_PREPARATION2_NORM_RESCAL.rmd


## [Logistic regression](https://cdn.rawgit.com/rempic/High-Throughput-Screening/master/machine_learning_classifiers/BORDERCELLS/)


## [Visualization of results](https://cdn.rawgit.com/rempic/High-Throughput-Screening/master/machine_learning_classifiers/BORDERCELLS/)





