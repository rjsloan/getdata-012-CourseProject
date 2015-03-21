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
alldata.txt - one large dataframe from all the test and training data untouched
<ul>
<li>
Rows: 10299
<li>
Columns: 563
</ul>
<li>
tidydata.txt  - smaller dataframe based on the average of each variable for each activity and each subject.
<ul>
<li>
Rows: 180
<li>
Columns: 88
</ul>
180 rows = 6 activities for each of the 30 subjects.
</ul>
<H5>THE VARIABLES</H5>
<ul>
<li>
Column 1: activity - the activity information (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
<li>
Column 2: subject - the number of the particular subject (person wearing the device)
<li>
Column 3-88: These variables are:
<br>
"tbodyaccelerometermeanx" "tbodyaccelerometermeany" "tbodyaccelerometermeanz" "tbodyaccelerometerstdx" "tbodyaccelerometerstdy" "tbodyaccelerometerstdz" "tgravityaccelerometermeanx" "tgravityaccelerometermeany" "tgravityaccelerometermeanz" "tgravityaccelerometerstdx" "tgravityaccelerometerstdy" "tgravityaccelerometerstdz" "tbodyaccelerometerjerkmeanx" "tbodyaccelerometerjerkmeany" "tbodyaccelerometerjerkmeanz" "tbodyaccelerometerjerkstdx" "tbodyaccelerometerjerkstdy" "tbodyaccelerometerjerkstdz" "tbodygyromeanx" "tbodygyromeany" "tbodygyromeanz" "tbodygyrostdx" "tbodygyrostdy" "tbodygyrostdz" "tbodygyrojerkmeanx" "tbodygyrojerkmeany" "tbodygyrojerkmeanz" "tbodygyrojerkstdx" "tbodygyrojerkstdy" "tbodygyrojerkstdz" "tbodyaccelerometermagnitudemean" "tbodyaccelerometermagnitudestd" "tgravityaccelerometermagnitudemean" "tgravityaccelerometermagnitudestd" "tbodyaccelerometerjerkmagnitudemean" "tbodyaccelerometerjerkmagnitudestd" "tbodygyromagnitudemean" "tbodygyromagnitudestd" "tbodygyrojerkmagnitudemean" "tbodygyrojerkmagnitudestd" "fbodyaccelerometermeanx" "fbodyaccelerometermeany" "fbodyaccelerometermeanz" "fbodyaccelerometerstdx" "fbodyaccelerometerstdy" "fbodyaccelerometerstdz" "fbodyaccelerometermeanfreqx" "fbodyaccelerometermeanfreqy" "fbodyaccelerometermeanfreqz" "fbodyaccelerometerjerkmeanx" "fbodyaccelerometerjerkmeany" "fbodyaccelerometerjerkmeanz" "fbodyaccelerometerjerkstdx" "fbodyaccelerometerjerkstdy" "fbodyaccelerometerjerkstdz" "fbodyaccelerometerjerkmeanfreqx" "fbodyaccelerometerjerkmeanfreqy" "fbodyaccelerometerjerkmeanfreqz" "fbodygyromeanx" "fbodygyromeany" "fbodygyromeanz" "fbodygyrostdx" "fbodygyrostdy" "fbodygyrostdz" "fbodygyromeanfreqx" "fbodygyromeanfreqy" "fbodygyromeanfreqz" "fbodyaccelerometermagnitudemean" "fbodyaccelerometermagnitudestd" "fbodyaccelerometermagnitudemeanfreq" "fbodybodyaccelerometerjerkmagnitudemean" "fbodybodyaccelerometerjerkmagnitudestd" "fbodybodyaccelerometerjerkmagnitudemeanfreq" "fbodybodygyromagnitudemean" "fbodybodygyromagnitudestd" "fbodybodygyromagnitudemeanfreq" "fbodybodygyrojerkmagnitudemean" "fbodybodygyrojerkmagnitudestd" "fbodybodygyrojerkmagnitudemeanfreq" "angletbodyaccelerometermean,gravity" "angletbodyaccelerometerjerkmean,gravitymean" "angletbodygyromean,gravitymean" "angletbodygyrojerkmean,gravitymean" "anglex,gravitymean" "angley,gravitymean" "anglez,gravitymean"
</ul>

<H5>THE TRANSFORMATIONS</H5>
<ul>
<li>
Combining 6 files (test and training files) into one large combined dataset
<li>
Reduce this dataset:
<ul>
<li>
Extract columns that are only associated with mean and std measurements
<li>
Clean up these column names to make them more descriptive
<li>
Replace numeric activity names with descriptive ones, e.g. WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
<li>
Take the average of each variable for each activity and each subject.
<ul>

(see run_analysis.R for more details of the transformation)

