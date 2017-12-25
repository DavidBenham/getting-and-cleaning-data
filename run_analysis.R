# ***** Prereq: Call Libraries
library(dplyr)


# ***** Step 0: Acquire Data and Check for Existance
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
file.dest <- 'Human Activity Recognition.zip'

if(!file.exists(file.dest))
{
    download.file(file.url,file.dest)    
}

# Extract File
folder <- 'UCI HAR Dataset'
if(!file.exists(folder))
{
    unzip(file.dest)
}


# ***** Step 1: Merge the training and the test sets to create one data set.
# Read Test Data
testSubjects <- read.table(file.path(folder, "test","subject_test.txt"))
testValues <- read.table(file.path(folder, "test","X_test.txt"))
testActivities <- read.table(file.path(folder, "test","y_test.txt"))

# Read Train Data
trainSubjects <- read.table(file.path(folder, "train","subject_train.txt"))
trainValues <- read.table(file.path(folder, "train","X_train.txt"))
trainActivities <- read.table(file.path(folder, "train","y_train.txt"))

# Read Features
features <- read.table(file.path(folder, "features.txt"), as.is=TRUE)
colnames(features) <- c("featureId","featureLabel")

# Read Activities
activities <- read.table(file.path(folder,"activity_labels.txt"))
colnames(activities) <- c("activityId","activityLabel")

# Combine Columns
testCombined <- cbind(testSubjects, testValues, testActivities)
trainCombined <- cbind(trainSubjects, trainValues, trainActivities)

# Combine Sets
activity <- rbind(testCombined, trainCombined)

# Verify Set Dimensions
dim(activity)

#assign all column names
colnames(activity) <- c("subject",features[,2],"activity")


# ***** Step 2: Extract only the measurements on the mean and standard deviation for each measurement.
# Extract only measurements with Mean and Standard Deviation as well as identifiers
keepColumns <- grepl("mean|std|subject|activity", colnames(activity))
activity <- activity[,keepColumns]

# verify Set Dimensions
dim(activity)


# ***** Step 3: Use descriptive activity names to name the activities in the data set
# Add Friendly Names for Activity Values
activity$activity <- factor(activity$activity, levels = activities[,"activityId"],labels = activities[,"activityLabel"])

# Verify Friendly Names
activity %>% distinct(activity)


# ***** Step 4: Appropriately labels the data set with descriptive variable names.
# Get Column Names
activityColumns <- colnames(activity)

# Remove Special Characters
activityColumns <- gsub("[\\(\\)-]", "", activityColumns)

# Replace Abbreviations
activityColumns <- gsub("^t", "timeDomain", activityColumns)
activityColumns <- gsub("Acc", "Accelerometer", activityColumns)
activityColumns <- gsub("Gyro", "Gyroscope", activityColumns)
activityColumns <- gsub("Mag", "Magnitude", activityColumns)
activityColumns <- gsub("^f", "frequencyDomain", activityColumns)
activityColumns <- gsub("Freq", "Frequency",activityColumns)
activityColumns <- gsub("mean", "Mean",activityColumns)
activityColumns <- gsub("std", "StandardDeviation",activityColumns)

# Correct Duplicates
activityColumns <- gsub("BodyBody","Body",activityColumns)

# Replace Column Names with Cleansed Column Names
colnames(activity) <-  activityColumns


# ***** Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
# Create Aggregate
activityMeans <- activity %>% 
    group_by(subject, activity) %>%
    summarise_all(funs(mean))

# Output a tidy data set
write.table(activityMeans,"tidy_data_set.txt", row.names = FALSE, quote =  FALSE)
