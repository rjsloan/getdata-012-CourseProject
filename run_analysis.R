# Code digitally signed - DigiCert

# Getting and Cleaning Data Course Project 
# https://class.coursera.org/getdata-012
# GitHub repo - rjsloan/getdata-012-CourseProject/run_analysis.R
# Date - 3/20/2015 

# Objective of script (steps not necessarily in the order below - see comments in script)

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


setwd("C:/Coursera/Getting and Cleaning Data/PROJECT")

library(data.table)
library(plyr)

# This script is dependent on these files:
# 1) subject_train.txt,  2) X_train.txt, 3) y_train.txt
# 4) subject_test.txt,   5) X_test.txt,  6) y_test.txt
# 7) features.txt,       8) activity_labels.txt

# Step 1 - Merges the training and the test sets to create one data set.
# Read the 3 files from the test folder
test <- read.table("UCI HAR Dataset/test/X_test.txt")
testActivity <- read.table("UCI HAR Dataset/test/y_test.txt")
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
# Bring all 3 files into one data.frame
testData <- cbind(testSubject, testActivity, test)

# Read the 3 files from the train folder
train <- read.table("UCI HAR Dataset/train/X_train.txt")
trainActivity <- read.table("UCI HAR Dataset/train/y_train.txt")
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
# Bring all 3 files into one data.frame
trainData <- cbind(trainSubject, trainActivity, train)

# Read these files (to be used later)
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

# Now combine the testData and trainData into one data.frame
allData <- rbind(testData, trainData)

dim(allData)
# [1] 10299   563 - Lines: 10299  Columns: 563

write.table(allData,"allData.txt",row.names = FALSE)

# Step 4 - Appropriately labels the data set with descriptive variable names.
# Get column 2 from features.txt.  Minor changes to colNames below for easier readibility,
# then we add Subject and Activity as the first 2 columns
colNames <- features[,2]
colNames <- gsub("\\(", "_", colNames)
colNames <- gsub("\\)", "", colNames)
colNames <- gsub("-","_",colNames)
colNames <- gsub("\\()","",colNames)
colNames <- gsub("Mag", "Magnitude", colNames)
colNames <- gsub("Acc", "Accelerometer", colNames)
colNAmes <- gsub("Gyro", "Gyrometer", colNames)
colNames <- gsub("_","", colNames)
colNames <- c("Subject", "Activity", colNames)
colNames <- tolower(colNames)

# Substitute all original column names in allData with new colNames
names(allData) <- colNames

# Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
# Assemble a smaller data set based on mean/Mean and std/Std column names
smallData <- allData[, grep("subject|activity|mean|std", colNames)]

# Step 3 - Uses descriptive activity names
# Replace labels by activity names in 'smallData' data set
names(activityLabels) <- c("tempvar", "activity")
mData <- merge(activityLabels, smallData, by.x="tempvar", by.y="activity", all=TRUE)
mData$tempvar <- NULL

# Step 5 - From the data set in step 4, creates a second, independent
# tidy data set with the average of each variable for each activity and each subject.
# Use write.table to output a txt file of tidy-data

tidyData <- ddply(mData, .(activity, subject), colwise(mean))

dim(tidyData)
# [1] 180  88   - this is 180 rows and 88 columns
# The 180 rows is from the 30 subjects times 6 activities apiece
# The 88 rows are Activity, Subject, and 86 variables (dev and mean) the are basic measurements of the wearable device.

write.table(tidyData,"tidy-data.txt",row.names = FALSE)

# Code digitally signed - DigiCert
