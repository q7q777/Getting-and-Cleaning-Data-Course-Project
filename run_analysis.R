install.packages(c("dplyr", "tidyr", "stringr"))

## load the needed libraries
library(tidyr)
library(dplyr)
library(stringr)



## set the working directory for features file and import all files to R
setwd("C:/Users/H/Desktop/Data Science/Getting and Cleaning Data/Assignment week 4/UCI HAR Dataset")

## import feature file to R
feature <- read.table("features.txt")

## create vector of true or false to extract only mean and stander deviation column
feature_needed <- str_detect(feature$V2, "[M-m]ean|std")

## set the working directory for testing files and import all files to R
setwd("C:/Users/H/Desktop/Data Science/Getting and Cleaning Data/Assignment week 4/UCI HAR Dataset/test")

## import test files to R
test <- dir(pattern = "test")
for(i in seq_along(test)) {
        assign(test[i], read.table(test[i]))
}

## use feature vector to extract only mean and stander deviation columns and binding tables together
x_test <- X_test.txt[, feature_needed] 
colnames(x_test) <- feature$V2[feature_needed]
test_set <- cbind(subject_test.txt, y_test.txt, x_test)

## set the working directory for trainging files and import all files to R
setwd("C:/Users/H/Desktop/Data Science/Getting and Cleaning Data/Assignment week 4/UCI HAR Dataset/train")

## import train files to R
train <- dir(pattern = "train")
for(i in seq_along(train)) {
        assign(train[i], read.table(train[i]))
}

## use feature vector to extract only mean and stander deviation columns and binding tables together
x_train <- X_train.txt[, feature_needed] 
colnames(x_train) <- feature$V2[feature_needed]
train_set <- cbind(subject_train.txt, y_train.txt, x_train)

## Merges the training and the test sets to create one data set
data_set <- rbind(test_set, train_set)


## labels the data set with descriptive variable names.
names(data_set)[1:2] <- c("subject_id", "activity")

data_label <- names(data_set)


data_label <- gsub("tBody", "time_body", data_label)
data_label <- gsub("tGravity", "time_gravity", data_label)

data_label <- gsub("f[B-b]ody", "frequency_body", data_label)
data_label <- gsub("f[G-g]ravity", "frequency_gravity", data_label)

data_label <- gsub("Acc", "_accelerometer", data_label)
data_label <- gsub("Gyro", "_gyroscope", data_label)

data_label <- gsub("mean\\(\\)|[M-m]ean", "_mean", data_label)
data_label <- gsub("std\\(\\)", "stander_deviation", data_label)

data_label <- gsub("-X", "_x", data_label)
data_label <- gsub("-Y", "_y", data_label)
data_label <- gsub("-Z", "_z", data_label)

data_label <- gsub("Jerk", "_jerk", data_label)
data_label <- gsub("[M-m]ag", "_magnitude", data_label)

data_label <- gsub("[B-b]ody[B-b]ody", "body", data_label)
data_label <- gsub("__", "_", data_label)
data_label <- gsub("-", "_", data_label)

names(data_set) <- data_label

## Use descriptive activity names to name the activities in the data set
data_set$activity <- gsub(pattern = "1", replacement = "walking", data_set$activity)
data_set$activity <- gsub(pattern = "2", replacement = "walking_upstairs", data_set$activity)
data_set$activity <- gsub(pattern = "3", replacement = "walking_downstairs", data_set$activity)
data_set$activity <- gsub(pattern = "4", replacement = "sitting", data_set$activity)
data_set$activity <- gsub(pattern = "5", replacement = "standing", data_set$activity)
data_set$activity <- gsub(pattern = "6", replacement = "laying", data_set$activity)

## change class of subject and activity
data_set[, c("subject_id", "activity")] <- lapply(data_set[, c("subject_id", "activity")], as.factor)

##  average of each variable for each activity and each subject.
average_all <- data_set %>%
                group_by(subject_id, activity) %>%
                summarise_each(funs(mean(., na.rm = T)), -subject_id, -activity)

write.table(data_set, "tidy.txt")

