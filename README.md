# Getting and Cleaning Data Course- Project Assignment
## Purpose
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare  tidy data that can be used for later analysis.

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course ## website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available  at the site where the data was obtained: 

 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


## Brief description to each of the below two raw datasets:

The inertia datasets (mention that they are not used directly in the script to produce the tidy data. However, they were used previously to produce the following type of dataset)

The initial data were downloaded from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## The data set used in the script to produce the output tidy data (X,y,activity, features, subject files)

Mention the scope of the script and the output tidy data. i.e. summarizing the mean and standard deviation (std) measurements per subject per activity by using the input dataset mentioned above.

Mention the locations of the input (raw data) and output (tidy data). If your starting point to run the code is the unzipped "UCI HAR Dataset" in the working directory, and it should as per the project requirements, mention that in order to remove all doubt from a potential marker. Use something like "This script starts with the assumption that the Samsung data is available in an unzipped UCI HAR Dataset folder with the working directory pointing to this folder". Besides, I save the exported tidy data in the "UCI HAR Dataset" folder so that the marker will have it there after running the script.

## Pre-requisites

1) Download https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2) Unzip into same folder as run_analysis.R
3) pre install libraries - reshape2
4)
A step-by-step explanation of how you approached the analysis. Breakdown of the requirements and what you did to complete each requirement. I.e. a descriptive translation of each line in the script. Example:

Step 1 - read the X_test file…

Step 2 – read the y_test file..

Mention that you changed the activities into descriptive names. Give a list of the activities classes vs labels.

If you changed the variable names, mention that and explain why you did that.

Although the tidy data comprises the mean and std variables, mention the original variables (in the inertia datasets) and how they contributed to calculate the output mean and std variables in the tidy data.

Guide the marker on how to read the tidy data file back into R by giving them the code for that. read.table(header=TRUE) {listing any settings you have changed from the default}".

