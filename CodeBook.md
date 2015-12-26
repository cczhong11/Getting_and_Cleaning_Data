# CodeBook
## Variables
 - activities :descriptive activity names
 - subjects   :subjects name
 - tBodyAcc-mean()-X
 - tBodyAcc-mean()-Y
 - tBodyAcc-mean()-Z
 - tGravityAcc-mean()-X
 - tGravityAcc-mean()-Y
 - tGravityAcc-mean()-Z
 - tBodyAccJerk-mean()-X
 - tBodyAccJerk-mean()-Y
 - tBodyAccJerk-mean()-Z
 - tBodyGyro-mean()-X
 - tBodyGyro-mean()-Y
 - tBodyGyro-mean()-Z
 - tBodyGyroJerk-mean()-X
 - tBodyGyroJerk-mean()-Y
 - tBodyGyroJerk-mean()-Z
 - tBodyAccMag-mean()
 - tGravityAccMag-mean()
 - tBodyAccJerkMag-mean()
 - tBodyGyroMag-mean()
 - tBodyGyroJerkMag-mean()
 - fBodyAcc-mean()-X
 - fBodyAcc-mean()-Y
 - fBodyAcc-mean()-Z
 - fBodyAcc-meanFreq()-X
 - fBodyAcc-meanFreq()-Y
 - fBodyAcc-meanFreq()-Z
 - fBodyAccJerk-mean()-X
 - fBodyAccJerk-mean()-Y
 - fBodyAccJerk-mean()-Z
 - fBodyAccJerk-meanFreq()-X
 - fBodyAccJerk-meanFreq()-Y
 - fBodyAccJerk-meanFreq()-Z
 - fBodyGyro-mean()-X
 - fBodyGyro-mean()-Y
 - fBodyGyro-mean()-Z
 - fBodyGyro-meanFreq()-X
 - fBodyGyro-meanFreq()-Y
 - fBodyGyro-meanFreq()-Z
 - fBodyAccMag-mean()
 - fBodyAccMag-meanFreq()
 - fBodyBodyAccJerkMag-mean()
 - fBodyBodyAccJerkMag-meanFreq()
 - fBodyBodyGyroMag-mean()
 - fBodyBodyGyroMag-meanFreq()
 - fBodyBodyGyroJerkMag-mean()
 - fBodyBodyGyroJerkMag-meanFreq()
 - tBodyAcc-std()-X
 - tBodyAcc-std()-Y
 - tBodyAcc-std()-Z
 - tGravityAcc-std()-X
 - tGravityAcc-std()-Y
 - tGravityAcc-std()-Z
 - tBodyAccJerk-std()-X
 - tBodyAccJerk-std()-Y
 - tBodyAccJerk-std()-Z
 - tBodyGyro-std()-X
 - tBodyGyro-std()-Y
 - tBodyGyro-std()-Z
 - tBodyGyroJerk-std()-X
 - tBodyGyroJerk-std()-Y
 - tBodyGyroJerk-std()-Z
 - tBodyAccMag-std()
 - tGravityAccMag-std()
 - tBodyAccJerkMag-std()
 - tBodyGyroMag-std()
 - tBodyGyroJerkMag-std()
 - fBodyAcc-std()-X
 - fBodyAcc-std()-Y
 - fBodyAcc-std()-Z
 - fBodyAccJerk-std()-X
 - fBodyAccJerk-std()-Y
 - fBodyAccJerk-std()-Z
 - fBodyGyro-std()-X
 - fBodyGyro-std()-Y
 - fBodyGyro-std()-Z
 - fBodyAccMag-std()
 - fBodyBodyAccJerkMag-std()
 - fBodyBodyGyroMag-std()
 - fBodyBodyGyroJerkMag-std()

## Transformation
1. Reading all datasets into R
2. Combining all training data by the following of subject,y,x
3. Doing the same thing with the test data
4. Using rbind to combine train and test data.
5. Changing the colnames by using the feature names
6. Using merge to add activity names.
7. Using grepl to select all the colnames with "mean()" and "std()"
8. Using aggregate to get mean value with all variables grouped by subjects and activities
9. Merging the activities name and result together
10. Finally change the colnames and write the table out






