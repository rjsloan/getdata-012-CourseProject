Codebook for Course Project
rjsloan/getdata-012-CourseProject/codebook.md
3/20/2015



OVERVIEW OF PROJECT
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


PURPOSE OF CODEBOOK
This code book describes the data/files, the variables, and any transformations or work that you performed to clean up the data.


THE DATA
Source file location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


THE FILES
test/subject_test.txt - - Each row identifies the subject who performed the activity for each window sample.
test/X_test.txt - Test set
test/y_test.txt - Test labels

train/subject_train.txt - Each row identifies the subject who performed the activity for each window sample.
train/X_train.txt - Training set
train/y_train.txt - Training labels

activity_labels.txt - identifies the 6 activites (see description about column 1 below)
features.txt - List of all features (see description about columns 3-88 below) 


THE DATASET
Called tidy-data.txt in the repo.The dataset contains 180 rows / 88 cols: 6 activities for each of the 30 subjects.

Column 1: the activity information (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
Column 2: the number of the particular subject (person wearing the device)
Column 3-88: the average calculated value for each variable. These variables include:
sensor signals (accelerometer and gyroscope), time and freq components, etc...


THE TRANSFORMATIONS (see run_analysis.R for details of each step)
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

  
  
