
# 1. Merges the training and the test sets to create one data set.
#1.a Read data sets and combine them

set_X1 <- read.table("./UCI HAR Dataset/train/X_train.txt") # Read X train set
set_X2 <- read.table("./UCI HAR Dataset/test/X_test.txt") # Read X test set
Features <- rbind(set_X1, set_X2)

#1.b Read subjects and combine them
set_subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
set_subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
Subject <-rbind(set_subjecttrain, set_subjecttest)

#1.c Read data labels and combine them
set_Y1 <- read.table("./UCI HAR Dataset/test/y_test.txt")
set_Y2 <- read.table("./UCI HAR Dataset/train/y_train.txt")
Activity <- rbind(set_Y1, set_Y2)

names(Subject)<-c("subject")
names(Activity)<- c("activity")
featuresList <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)

names(Features) <- featuresList$V2[grep("mean\\(\\)|std\\(\\)", featuresList$V2)]
dataCombine <- cbind(Subject, Activity)
Data <- cbind(Features, dataCombine) # Combined Data

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

##2a. Take Names of Features with “mean()” or “std()”
#MeanSD_FeaturesNames<-featuresList$V2[grep("mean\\(\\)|std\\(\\)", featuresList$V2)]

## 2b. Apply selection criteria of mean() or std()
selectedNames<-c(as.character(MeanSD_FeaturesNames), "subject", "activity" )
selectedNames<-c(as.character(Features), "subject", "activity" )
Data<-subset(Data,select=selectedNames)

# 3. Uses descriptive activity names to name the activities in the data set
#3.a Read the activity_labels text file
Description <- read.table("./UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)

# 4. Appropriately labels the data set with descriptive variable names. 
names(Data)<-gsub("Acc", "Accelerometer", names(Data)) # replace Acc with Accelerometer 
names(Data)<-gsub("Gyro", "Gyroscope", names(Data)) # replace Gyro with Gyroscope 
names(Data)<-gsub("Mag", "Magnitude", names(Data)) # replace Mag with Magniture
names(Data)<-gsub("BodyBody", "Body", names(Data)) # replace BodyBody with Body
names(Data)<-gsub("^t", "time", names(Data)) # replace t with time
names(Data)<-gsub("^f", "frequency", names(Data)) # replace f with frequency

# 5. From the data set in step 4, creates a second, independent tidy data set with the
# average of each variable for each activity and each subject.Output is Q5.txt
library(plyr);
Q5Data<-aggregate(. ~subject + activity, Data, mean)
Q5Data<-Q5Data[order(Q5Data$subject,Q5Data$activity),]

write.table(Q5Data, file = "Q5.txt",row.name=FALSE)