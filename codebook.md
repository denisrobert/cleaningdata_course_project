# Codebook for course Project for getdata-032, "Getting and Cleaning Data"

## Initial Dataset Description

Each observation consists of, for one of 30 experimental subjects, a set of feature variables describing the state of a smartphone's gyroscope and accelerometer, as well as the activity the subject was performing at the time the measurements were taken.

The subjects were randomly divided into two classes, where 70% of the subjects were used to generate a training data set, and 30% to generate a testing data set.

Each subset consists of three main files (? is "test" or "train" depending on the subject subset.):

- subject_? the subject corresponding to each measurement.
- X_? contains the feature values for each measurement.
- y_? contains the activity code for each measurement.

All three files contain the same number of rows, once for each measurement.

## Variables in the original dataset

- The subject_? file contains a single column:
	subject: The ID of the subject on which the measurement was based.
	
- The y_? file contains a single column:
	activity: the activity code (as described in activity_labels.txt) which describes what the subject was doing at the time the measurement was taken
	
- The X_? file contains a number of columns describing the features of each measurement. The variables are described in detail in the features_info.txt file.
	 

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

## Variables in the final data set.

subject: The ID of the subject on which the measurement was based.
activity.name: The descriptive name of the activity the subject engaged in.
tBodyAcc.mean.{X|Y|Z}: The average of the values of the tBodyAcc.mean values in the original data set, for the given subject and activity.
tGravityAcc.mean.{X|Y|Z}: The average of the values of the tGravityAcc.mean values in the original data set, for the given subject and activity.
tBodyAccJerk.mean.{X|Y|Z}: The average of the values of the tBodyAccJerk.mean values in the original data set, for the given subject and activity.
tBodyGyro.mean.{X|Y|Z}: The average of the values of the tBodyGyro.mean values in the original data set, for the given subject and activity.
tBodyGyroJerk.mean.{X|Y|Z}: The average of the values of the tBodyGyroJerk.mean values in the original data set, for the given subject and activity.
tBodyAccMag.mean: The average of the values of the tBodyAccMag.mean values in the original data set, for the given subject and activity.
tGravityAccMag.mean: The average of the values of the tGravityAccMag.mean values in the original data set, for the given subject and activity.
tBodyAccJerkMag.mean: The average of the values of the tBodyAccJerkMag.mean values in the original data set, for the given subject and activity.
tBodyGyroMag.mean: The average of the values of the tBodyGyroMag.mean values in the original data set, for the given subject and activity.
tBodyGyroJerkMag.mean: The average of the values of the tBodyGyroJerkMag.mean values in the original data set, for the given subject and activity.
fBodyAcc.mean.{X|Y|Z}: The average of the values of the fBodyAcc.mean values in the original data set, for the given subject and activity.
fBodyAccJerk.mean.{X|Y|Z}: The average of the values of the fBodyAccJerk.mean values in the original data set, for the given subject and activity.
fBodyGyro.mean.{X|Y|Z}: The average of the values of the fBodyGyro.mean values in the original data set, for the given subject and activity.
fBodyAccMag.mean: The average of the values of the fBodyAccMag.mean values in the original data set, for the given subject and activity.
fBodyBodyAccJerkMag.mean: The average of the values of the fBodyBodyAccJerkMag.mean values in the original data set, for the given subject and activity.
fBodyBodyGyroMag.mean: The average of the values of the fBodyBodyGyroMag.mean values in the original data set, for the given subject and activity.
fBodyBodyGyroJerkMag.mean: The average of the values of the fBodyBodyGyroJerkMag.mean values in the original data set, for the given subject and activity.
tBodyAcc.std.{X|Y|Z}: The average of the values of the tBodyAcc.std values in the original data set, for the given subject and activity.
tGravityAcc.std.{X|Y|Z}: The average of the values of the tGravityAcc.std values in the original data set, for the given subject and activity.
tBodyAccJerk.std.{X|Y|Z}: The average of the values of the tBodyAccJerk.std values in the original data set, for the given subject and activity.
tBodyGyro.std.{X|Y|Z}: The average of the values of the tBodyGyro.std values in the original data set, for the given subject and activity.
tBodyGyroJerk.std.{X|Y|Z}: The average of the values of the tBodyGyroJerk.std values in the original data set, for the given subject and activity.
tBodyAccMag.std: The average of the values of the tBodyAccMag.std values in the original data set, for the given subject and activity.
tGravityAccMag.std: The average of the values of the tGravityAccMag.std values in the original data set, for the given subject and activity.
tBodyAccJerkMag.std: The average of the values of the tBodyAccJerkMag.std values in the original data set, for the given subject and activity.
tBodyGyroMag.std: The average of the values of the tBodyGyroMag.std values in the original data set, for the given subject and activity.
tBodyGyroJerkMag.std: The average of the values of the tBodyGyroJerkMag.std values in the original data set, for the given subject and activity.
fBodyAcc.std.{X|Y|Z}: The average of the values of the fBodyAcc.std values in the original data set, for the given subject and activity.
fBodyAccJerk.std.{X|Y|Z}: The average of the values of the fBodyAccJerk.std values in the original data set, for the given subject and activity.
fBodyGyro.std.{X|Y|Z}: The average of the values of the fBodyGyro.std values in the original data set, for the given subject and activity.
fBodyAccMag.std: The average of the values of the fBodyAccMag.std values in the original data set, for the given subject and activity.
fBodyBodyAccJerkMag.std: The average of the values of the fBodyBodyAccJerkMag.std values in the original data set, for the given subject and activity.
fBodyBodyGyroMag.std: The average of the values of the fBodyBodyGyroMag.std values in the original data set, for the given subject and activity.
fBodyBodyGyroJerkMag.std: The average of the values of the fBodyBodyGyroJerkMag.std values in the original data set, for the given subject and activity.