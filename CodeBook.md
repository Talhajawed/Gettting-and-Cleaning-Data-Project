Firstly, data was dowloaded from data [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
Then seperate datasets were formed for `subjects`, `activities`, `features` and `measurements` of test and taining datasets. After that both test and training datasets were merged with all of there subjects, activities, features and measurement to make one large dataset. From merged dataset which is named as `human_activity_recognition`, all the `measurement` of `features` with `mean` and `standard deviation` of all `subjects` and their `activities` are extracted.

From extracted dataset, measurements of following variable 'features' are obtained
 
* time_domainBodyAccelerometerMeanX
* time_domainBodyAccelerometerMeanY 
* time_domainBodyAccelerometerMeanZ
* time_domainBodyAccelerometerStandard_DeviationX
* time_domainBodyAccelerometerStandard_DeviationY 
* time_domainBodyAccelerometerStandard_DeviationZ 
* time_domainGravityAccelerometerMeanX
* time_domainGravityAccelerometerMeanY 
* time_domainGravityAccelerometerMeanZ 
* time_domainGravityAccelerometerStandard_DeviationX 
* time_domainGravityAccelerometerStandard_DeviationY 
* time_domainGravityAccelerometerStandard_DeviationZ 
* time_domainBodyAccelerometerJerkMeanX
* time_domainBodyAccelerometerJerkMeanY
*  time_domainBodyAccelerometerJerkMeanZ 
*  time_domainBodyAccelerometerJerkStandard_DeviationX
*  time_domainBodyAccelerometerJerkStandard_DeviationY
*  time_domainBodyAccelerometerJerkStandard_DeviationZ 
*  time_domainBodyGyrometerMeanX
*  time_domainBodyGyrometerMeanY 
*  time_domainBodyGyrometerMeanZ 
*  time_domainBodyGyrometerStandard_DeviationX
*  time_domainBodyGyrometerStandard_DeviationY
*  time_domainBodyGyrometerStandard_DeviationZ
*  time_domainBodyGyrometerJerkMeanX
*  time_domainBodyGyrometerJerkMeanY
*  time_domainBodyGyrometerJerkMeanZ
*  time_domainBodyGyrometerJerkStandard_DeviationX
*  time_domainBodyGyrometerJerkStandard_DeviationY
*  time_domainBodyGyrometerJerkStandard_DeviationZ
*  time_domainBodyAccelerometerMagMean
*  time_domainBodyAccelerometerMagStandard_Deviation 
*  time_domainGravityAccelerometerMagMean
*  time_domainGravityAccelerometerMagStandard_Deviation 
*  time_domainBodyAccelerometerJerkMagMean
*  time_domainBodyAccelerometerJerkMagStandard_Deviation
*  time_domainBodyGyrometerMagMean
*  time_domainBodyGyrometerMagStandard_Deviation
*  time_domainBodyGyrometerJerkMagMean
*  time_domainBodyGyrometerJerkMagStandard_Deviation
*  frequency_domainBodyAccelerometerMeanX
*  frequency_domainBodyAccelerometerMeanY
*  frequency_domainBodyAccelerometerMeanZ
*  frequency_domainBodyAccelerometerStandard_DeviationX
*  frequency_domainBodyAccelerometerStandard_DeviationY
*  frequency_domainBodyAccelerometerStandard_DeviationZ
*  frequency_domainBodyAccelerometerMeanFrequencyX
*  frequency_domainBodyAccelerometerMeanFrequencyY
*  frequency_domainBodyAccelerometerMeanFrequencyZ
*  frequency_domainBodyAccelerometerJerkMeanX
*  frequency_domainBodyAccelerometerJerkMeanY
*  frequency_domainBodyAccelerometerJerkMeanZ
*  frequency_domainBodyAccelerometerJerkStandard_DeviationX
*  frequency_domainBodyAccelerometerJerkStandard_DeviationY
*  frequency_domainBodyAccelerometerJerkStandard_DeviationZ
*  frequency_domainBodyAccelerometerJerkMeanFrequencyX
*  frequency_domainBodyAccelerometerJerkMeanFrequencyY
*  frequency_domainBodyAccelerometerJerkMeanFrequencyZ
*  frequency_domainBodyGyrometerMeanX
*  frequency_domainBodyGyrometerMeanY
*  frequency_domainBodyGyrometerMeanZ
*  frequency_domainBodyGyrometerStandard_DeviationX
*  frequency_domainBodyGyrometerStandard_DeviationY
*  frequency_domainBodyGyrometerStandard_DeviationZ
*  frequency_domainBodyGyrometerMeanFrequencyX
*  frequency_domainBodyGyrometerMeanFrequencyY
*  frequency_domainBodyGyrometerMeanFrequencyZ
*  frequency_domainBodyAccelerometerMagMean
*  frequency_domainBodyAccelerometerMagStandard_Deviation
*  frequency_domainBodyAccelerometerMagMeanFrequency
*  frequency_domainBodyAccelerometerJerkMagMean
*  frequency_domainBodyAccelerometerJerkMagStandard_Deviation
*  frequency_domainBodyAccelerometerJerkMagMeanFrequency
*  frequency_domainBodyGyrometerMagMean
*  frequency_domainBodyGyrometerMagStandard_Deviation
*  frequency_domainBodyGyrometerMagMeanFrequency
*  frequency_domainBodyGyrometerJerkMagMean
*  frequency_domainBodyGyrometerJerkMagStandard_Deviation
*  frequency_domainBodyGyrometerJerkMagMeanFrequency

Above variabes are for the subjects from  `1` to `30` which are performing activities from `1` to `6`
These  `activities` are then labeled accordingly as shown below
* 1 `WALKING`
* 2 `WALKING_UPSTAIRS`
* 3 `WALING_DOWNSTAIRS`
* 4 `SITTING`
* 5 `STANDING`
* 6 `LAYING`

In `human_activity_recognition` dataset subjects are mentioned under `Subject` column, activities are mentioned under `Activity_Name` column and then `features` are obtained.

At the end, `mean_human_activity_recognition` dataset is formed by obtaining `mean` of each  `subject` for its each  `activity` and each `variable` having 180 enteries and 81 columns (79 variables , 1 for subject and 1 for activity)
