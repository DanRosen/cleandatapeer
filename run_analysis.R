# run_analysis.R start of code

# see README for context and assumptions of analysis
# see Codebook for full description of data

# make sure all files are in the current working directory
wd <- getwd() # get the current working directory for file read/write 

# DATA for assignments
# test data is X_test.txt and y_test.txt
# train data is X_train.txt and y_train.txt
# features has the variable names for x
# y is the activity that match activity_labels.txt
# subject_train.txt matches rows with individuals for train set
# subject_test.txt matches rows with individuals for test set

# READ all the files and make them tidy
# TEST code with expected results is included. Uncomment to run. 

# measured data 
xtrain <- read.table(paste(wd,"\\X_train.txt",sep=""))
#dim(xtrain) # [1] 7352  561
xtest <- read.table(paste(wd,"\\X_test.txt",sep=""))
#dim(xtest) # [1] 2947  561

# activity data
ytrain <- read.table(paste(wd,"\\y_train.txt",sep=""))
#dim(ytrain) # [1] 7352    1
ytest <- read.table(paste(wd,"\\y_test.txt",sep=""))
#dim(ytest) # [1] 2947    1

# variable names are in features.txt
# clean variable names to make them tidy
features <- read.table(paste(wd,"\\features.txt",sep=""),stringsAsFactors=FALSE)
#dim(features) # [1] 561   2  V1 is rownumber, V2 is name of feature
features <- features[,2]  # keep names

# text for the activities
labels <- read.table(paste(wd,"\\activity_labels.txt",sep=""),stringsAsFactors=FALSE)
# for merge, row number matches the activity number in the y variable
names(labels) <- c("activity","label")

# subject number for each row of measured data
subj_train <- read.table(paste(wd,"\\subject_train.txt",sep=""))
#dim(subj_train) # [1] 7352    1
subj_test <- read.table(paste(wd,"\\subject_test.txt",sep=""))
#dim(subj_test) # [1] 2947    1

# TASK 1 CODE
# 1. merge (rbind) training and test sets
xsets <- rbind(xtrain,xtest)
#dim(xsets) # [1] 10299   561
ysets <- rbind(ytrain,ytest) # same order as xsets
#dim(ysets) # [1] 10299     1
ssets <- rbind(subj_train,subj_test) # same order as xsets
#dim(ssets) # [1] 10299     1
features <- c("subject","activity",features) # add subject and y variable name
#length(features) # [1] 563
q1data <- cbind(ssets,ysets,xsets) # add subject and y variable to the x data
#dim(q1data) # [1] 10299   563
names(q1data) <- features    # add names

# TASK 2 CODE
# 2.Extracts only the measurements on the mean and standard deviation 
#    for each measurement. 

# USE () in the variable names to find the correct variables
# REMOVE () when no longer needed
# CLEAN the variables names: remove dashes, periods, make lowercase

# find the mean() and std() names
mslogic <- grepl("mean\\(\\)|std\\(\\)",names(q1data))
mslogic[1:2] <- TRUE # keep the activity
q2data <- q1data[,mslogic] # all rows, just columns with mean|std
#dim(q2data) # [1] 10299    68
nn <- sub("\\(\\)","",names(q2data)) # remove the () from variable names
nn <- gsub("-","",nn) # remove '-' from variable names
names(q2data) <- tolower(nn)    # use the tidy names

# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive activity names. 

# replace the y variable with its label
q34data <- merge(q2data,labels)  # match the labels with the activity
#dim(q34data) # [1] 10299    69   # merge puts activity as first var in df
q34data[,1] <- q34data[,69]      # replace the y variable with the labels
q34data <- q34data[,-69]         # drop the added label
# check for correctness
#as.vector(table(q34data$activity)) # [1] 1944 1777 1906 1722 1406 1544
#as.vector(table(q2data$activity))  # [1] 1722 1544 1406 1777 1906 1944

# 5.Creates a second, independent tidy data set with the average of
#   each variable for each activity and each subject. 
# rows: (30 x 6) subject by activities
# cols: (2 + 66) subject, activity, all mean, std columns

library(plyr) # split, apply, combine library

# col 1 and 2 need to be renamed back to subject and activity
z <- ddply(q34data[,-c(1:2)],c("q34data$subject","q34data$activity"),colMeans)
names(z)[1:2] <- c("subject","activity")

# write file, needs a .txt extension for upload
ff <- paste(wd,"\\tidyavg.txt",sep="")
rt <- write.table(z, file = ff, quote = FALSE, sep = " ")
# test that the file is ok
#test <- read.table(paste(wd,"\\tidyavg.txt",sep=""),header=TRUE)
#dim(test) # [1] 180  68

# run_analysis.R end of code


