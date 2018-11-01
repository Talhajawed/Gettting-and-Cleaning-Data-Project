# Gettting-and-Cleaning-Data-Project
This project demonstrates the data that was collected from gyroscope and accelerometer of Samsung Galaxy SII, during an experiment that was cleaned using R script for further analysis.
This project contains the following files: 
- `Readme.md` which provides an overview of dataset. 
- `CodeBook.md` which provides information about how data was cleaned and make tidy
- `tidy_data.txt` cleaned dataset
- `run_analysis.R` R script to clean the data obtained through experiment

## Experiment
The source of this data set is [Human Activity Recognition](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
The raw data for this project is [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Cleaning the dataset
To clean the raw data through R script following steps were perfomed. Detailed steps and their results are available in `CodeBook.md`
- Data downloaded from source website
- Unzip and read the data
- Merge two (test and training) datasetd
- Extract mean and standard deviation measurements from merged dataset
- Use descriptive activity names to label activities
- Label the dataset with descriptive variable names
- Create a tidy dataset with average of each variable for each activity and each subject
