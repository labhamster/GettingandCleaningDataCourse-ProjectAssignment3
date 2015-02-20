
# 1. Merges the training and the test sets to create one data set.
#1.a Read data sets and combine them

set_X1 <- read.table("./UCI HAR Dataset/train/X_train.txt") # Read train set
set_X2 <- read.table("./UCI HAR Dataset/test/X_test.txt") # Read test set
X <- rbind(set_X1, set_X2)

#1.b Read subjects and combine them
set_subjecttrain1 <- read.table("./UCI HAR Dataset/train/subject_train.txt")
set_subjecttrain2 <- read.table("./UCI HAR Dataset/test/subject_test.txt")
Subject <-rbind(set_subjecttrain1, set_subjecttrain2)
#1.c Read data labels and combine them
set_Y1 <- read.table("./UCI HAR Dataset/test/y_test.txt")
set_Y2 <- read.table("./UCI HAR Dataset/train/y_train.txt")
Y <- rbind(set_Y1, set_Y2)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

##2a. Read Features List
featuresList <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
features <- featuresList$V2



# 3. Uses descriptive activity names to name the activities in the data set



# 4. Appropriately labels the data set with descriptive variable names. 



# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.