README.md

What the analysis file does (run_analysis.R)

Merges the training and the test sets to create one data set.
   # Read the 3 files from the test folder
   # Bring all 3 files into one data.frame
   # Read the 3 files from the train folder
   # Bring all 3 files into one data.frame
   # Now combine the testData and trainData into one data.frame

Appropriately labels the data set with descriptive variable names.
   # Get column 2 from features.txt.  Minor changes to colNames below for easier readibility, by applying some substitutions    to provide more readable names

   # then we add Subject and Activity as the first 2 columns
   # Substitute all original column names in allData with new colNames

Extracts only the measurements on the mean and standard deviation for each measurement. 
   # Assemble a smaller data set based on mean and std column names

Uses descriptive activity names
   # Replace labels by activity names in 'smallData' data set

From the data set in step 4, creates a second, independent
   # create tidy data set with the average of each variable for each activity and each subject.
   # Use write.table to output a txt file of tidy-data



*** See codebook.md for description of dataset, files, variables, etc..

*** The script is written to align with the 5 steps of the assignment.

   1. Merges the training and the test sets to create one data set.
   2. Extracts only the measurements on the mean and standard deviation for each measurement. 
   3. Uses descriptive activity names to name the activities in the data set
   4. Appropriately labels the data set with descriptive variable names. 
   5. Create a second, independent tidy data set with the average of each variable for each     activity and each subject.
   
The script (run_analysis.R) is commented to provide details in how the data was processed each step of the way.
