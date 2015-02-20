
# Code:- run_analysis.R code book
#####Purpose:-Describes the 1. variables, 2. the data, and 3.transformations done for this assignment
#### Author: stanley see
#### Date: 20th Feb 2015

### 1. Data
1. Source of the original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Description of the original data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


### 2. Variables..the variables used in run_analysis.R

2.1 set_X1 -  contains the dataset of  x train set from x_train.txt

2.2 set_X2 - contains the dataset of  x test set from x_test.txt

2.3 Features - contains the combined datasets of x from above 2 variables

2.4 set_subjecttrain - contains the dataset of subject train set from subject_train.txt

2.5 set_subjecttest - contains the dataset of subject test set from subject_test.txt

2.6 Subject - contains the combined datasets of subject from above 2 variables

2.7 set_Y1  -  contains the dataset of  Y train set from y_train.txt

2.8 set_Y2 - contains the dataset of  Y test set from y_test.txt

2.9 Activity - contains the combined datasets of Y from above 2 variables

2.10 featuresList - contains the dataset from features.txt 

2.11 Data - contains combined dataset of the above X,Y,Activity

2.12 Features - contains a subset of featuresList dataset of means/ SDs columns

2.13 Description - contains the dataset from activity_labels.txt for labelling

2.14 Q5Data - contains the calculated average of each variable for each activity and each subject

### 3. Transformation : The script run_analysis.R is excuted in the following way as per assignment

1. Merge the training and test sets to create one data set.
    1.a Read data sets and combine them
    1.b Read subjects and combine them
    1.c Read data labels and combine them

2. Extracts only the measurements on the mean and standard deviation for each measurement.
    2a. Take Names of Features with “mean()” or “std()” from features.txt
    2b. Apply selection criteria of mean() or std() to data to extract required data.

3. Reads activity_labels.txt and applies human readable activity names to name the activities in the data set.

4. Labels the data set with descriptive names. 

5. The average of each measurement for each activity and each subject is merged to a second data set. The result is saved as Q5data.txt 
