############################################
# File: run_analysis.R
# Overview:
# Uses the data collected during an experiment from the gyroscope and accelerometer of Samsung Galaxy S II mobile. 
# This script will work with data, make it tidy resulting tidy_data.txt

library(dplyr)

############################################
# Step - 1 Download Data
############################################
fileurl<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zip_file<- "UCI HAR DATASET.zip"

if(!file.exists(zip_file)){
  download.file(fileurl, zip_file, mode = "wb")
}

datapath<- "UCI HAR DATASET"
if(!file.exists(datapath)){
  unzip(zip_file)
}

############################################
# Step - 2 Read Data
############################################
subject_test<- read.table(file.path(datapath,"test", "subject_test.txt"))
values_test<- read.table(file.path(datapath, "test", "X_test.txt"))
activity_test<- read.table(file.path(datapath, "test", "y_test.txt"))

subject_train<- read.table(file.path(datapath,"train", "subject_train.txt"))
values_train<- read.table(file.path(datapath, "train", "X_train.txt"))
activity_train<- read.table(file.path(datapath, "train", "y_train.txt"))

feature_variable<- read.table(file.path(datapath, "features.txt"), as.is = TRUE)
activities<- read.table(file.path(datapath, "activity_labels.txt"))
colnames(activities)<- c("activity_id", "activity_label")


############################################
# Step - 3 Merge test and training datasets
############################################

human_activity_recognition<- rbind(cbind(subject_test, activity_test, values_test), cbind(subject_train,activity_train ,values_train ))
colnames(human_activity_recognition)<- c("Subject", "Activity_Name", feature_variable[,2])

########################################################################################
# Step - 4 Extracting the measurements on mean and standard deviation from merged data
########################################################################################

extracted_measurement<- grepl("mean|std|Subject|Activity_Name", colnames(human_activity_recognition))
human_activity_recognition<- human_activity_recognition[, extracted_measurement]

########################################################################################
# Step - 5 Using descriptive activity names to label activities
########################################################################################

human_activity_recognition$Activity_Name<- factor(human_activity_recognition$Activity_Name, levels = activities$activity_id, labels = activities$activity_label)

########################################################################################
# Step - 6 Labeling the dataset with descriptive variable names
########################################################################################

human_activity_recognition_col<- colnames(human_activity_recognition)
human_activity_recognition_col<- gsub("[\\(\\)-]", "", human_activity_recognition_col)
human_activity_recognition_col<- gsub("^f", "frequency_domain", human_activity_recognition_col)
human_activity_recognition_col<- gsub("^t", "time_domain", human_activity_recognition_col)
human_activity_recognition_col<- gsub("Acc","Accelerometer", human_activity_recognition_col)
human_activity_recognition_col<- gsub("std", "Standard_Deviation", human_activity_recognition_col)
human_activity_recognition_col<- gsub("Gyro", "Gyrometer", human_activity_recognition_col)
human_activity_recognition_col<- gsub("Freq", "Frequency", human_activity_recognition_col)
human_activity_recognition_col<- gsub("mean", "Mean", human_activity_recognition_col)
human_activity_recognition_col<- gsub("bodybody","body", human_activity_recognition_col)

colnames(human_activity_recognition)<- c(human_activity_recognition_col)

##############################################################################################################
# Step - 7 Creating tidy data set with the average of each variable for each activity and each subject 
##############################################################################################################

mean_human_activity_recognition<- human_activity_recognition %>% group_by(Subject, Activity_Name) %>% summarise_all(funs(mean))
write.table(mean_human_activity_recognition, "tidy_data.txt", row.names = FALSE, quote = FALSE)


