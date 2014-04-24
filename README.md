# ReadMe

## Peer assessment Cleaning and getting data

Instructions

The R script run_analysis.R does the following:
 
* 1.Merges the training and the test sets to create one data set.
* 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
* 3.Uses descriptive activity names to name the activities in the data set
* 4.Appropriately labels the data set with descriptive activity names. 
* 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### Documentation for assignment.

All files, both code and data, must be in the current working directory.

The DATA for assignments is:

* test data is X_test.txt and y_test.txt
* train data is X_train.txt and y_train.txt
* features has the variable names for x
* ytrain and ytest are the activity that match activity_labels.txt
* subject_train.txt matches rows with individuals for train set
* subject_test.txt matches rows with individuals for test set

### Steps in the R Script

* Read into R all the data files and combine appropriately.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

The second data set is submitted as part of the assignemnt. The same mean and
standard deviation variables are used as are extracted in step 2. There are six
activities and 30 subjects, for a total of 180 subjects by activity means, 
across 66 variables. The final data set has the dimensions of:

* rows: (30 x 6) subject by activities
* cols: (2 + 66) subject, activity, all mean, std columns

The last step uses the library plyr to split, apply, and recombine the data.

The variables included in the dataset are the mean of the original variables.

The second dataset is named tinyavg.txt and is space delimited with a header row of variable names.

All the measured variables are numeric and unitless. See Codebook.md for further details. 

