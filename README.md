README.md

What the analysis file does (run_analysis.R) - see comments in actual script for further details

<B>Merges the training and the test sets to create one data set</B>
<ul>
<li>
Read the 3 files from the test folder
<li>
Combine all 3 files into one data.frame
<li>
Read the 3 files from the train folder
<li>
Combine all 3 files into one data.frame
<li>
Now combine the testData and trainData into one data.frame
<li>
Output this huge data.frame to a file called "allData". Not included in repo due
to size, but can be generated by running this script.
</ul>

<B>Appropriately labels the data set with descriptive variable names</B>
<ul>
<li>
Get column 2 from features.txt and apply minor changes to colNames made for easier readibility.
<li>
Substitute all original column names in allData with new colNames
</ul>

<B>Extracts only the measurements on the mean and standard deviation for each measurement</B>
<ul>
<li>
Assemble a smaller data set based on mean and std column names
</ul>

<B>Uses descriptive activity names</B>
<ul>
<li>
Replace labels by activity names in 'smallData' data set
</ul>

<B> Created a second, independent tidy data set called tidy-data.txt </B>
<ul>
<li>
create tidy data set with the average of each variable for each activity / subject.
<li>
Use write.table to output a txt file of tidy-data.txt
</ul>

*** See codebook.md for description of dataset, files, variables, etc..

*** The script (run_analysis.R) is commented to provide further details in how the data was processed each step of the way.
