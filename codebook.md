# Codebook for course Project for getdata-032, "Getting and Cleaning Data"

## Initial Dataset Description

Each observation consists of, for one of 30 experimental subjects, a set of feature variables describing the state of a smartphone's gyroscope and accelerometer, as well as the activity the subject was performing at the time the measurements were taken.

The subjects were randomly divided into two classes, where 70% of the subjects were used to generate a training data set, and 30% to generate a testing data set.

Each subset consists of three main files (? is "test" or "train" depending on the subject subset.):

- subject_? the subject corresponding to each measurement.
- X_? contains the feature values for each measurement.
- y_? contains the activity code for each measurement.

All three files contain the same number of rows, once for each measurement.

## 

## Steps used to generate the working dataset.

A. First, read the three files for each subset, and name the columns:
	* X_? column names as per the features.txt file
	* y_? is named "activity"
	* subject_? is named "subject"
	
B. Bind, columnwise, the three data frames together to form a single data frame per subset

C. Merge, rowwise, the two subsets to form a single overall dataset containing both testing and training data.

D. Using the lookup table found in activity_labels.txt, assign descriptive names for each activity in a new column called activity.name

E. Remove all columns from the resulting set except those representing the mean and standard deviation values, as well as the subject and activity.name columns.

## Steps used to generate the final data set.

The final dataset is the mean calculated on all feature variables (all variables other than subject and activity.name) after grouping the dataset by subject and activity name.