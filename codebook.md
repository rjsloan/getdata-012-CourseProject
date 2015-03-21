<H5>OVERVIEW OF PROJECT</H5>
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
<H5>PURPOSE OF CODEBOOK</H5>
This code book describes the data/files, the variables, and any transformations or work that you performed to clean up the data.
<H5>THE DATA</H5>
Source file location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
<H5>THE FILES</H5>
<ul>
<li>
test/subject_test.txt - - Each row identifies the subject who performed the activity for each window sample.
<li>
test/X_test.txt - Test set
<li>
test/y_test.txt - Test labels
<li>
train/subject_train.txt - Each row identifies the subject who performed the activity for each window sample.
<li>
train/X_train.txt - Training set
<li>
train/y_train.txt - Training labels
<li>
activity_labels.txt - identifies the 6 activites (see description about column 1 below)
<li>
features.txt - List of all features (see description about columns 3-88 below) 
<li>
Other misc files were part of the dataset, but not needed for this script
</ul>

<H5>THE DATASETS</H5>
<ul>
<li>
alldata.txt - one large dataframe from the test and training data
<li>
Rows: 10299
<li>
Columns: 563
<ul>
</ul>
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

 

What the analysis file do:
# Step 1 - Merges the training and the test sets to create one data set.
# Read the 3 files from the test folder
# Bring all 3 files into one data.frame
# Read the 3 files from the train folder
# Bring all 3 files into one data.frame
# Now combine the testData and trainData into one data.frame

# Step 4 - Appropriately labels the data set with descriptive variable names.
# Get column 2 from features.txt.  Minor changes to colNames below for easier readibility, by applying some substitutions to provide more readable names

# then we add Subject and Activity as the first 2 columns
# Substitute all original column names in allData with new colNames

# Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
# Assemble a smaller data set based on mean and std column names

# Step 3 - Uses descriptive activity names
# Replace labels by activity names in 'smallData' data set

# Step 5 - From the data set in step 4, creates a second, independent
# create tidy data set with the average of each variable for each activity and each subject.
# Use write.table to output a txt file of tidy-data

 
  
