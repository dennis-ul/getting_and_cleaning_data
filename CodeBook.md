Data
====

The tidy data is presented in its wide form. Which means that every
feature is considered as one variable. In the tidy data set every
observation is a combination of a subject and a specific activity. The
tidy data set consists of 81 variables which can be separated into two
ID Variables which define which subject has done which activity and 79
feature variables which are measured within the experiment.

Transformations
===============

### Download and unzip the file into current working directory.

The first step is to download and unzip the files into the current
working directory. The next step ist to read the raw data into R.The raw
data files are defined as follows:

-   train\_data: data training set: Measured feature values
-   train\_labels: activity labels of the training set as numbers (six
    activities)
-   train\_subject: subject vector of the training set as numbers (10
    subjects)
-   test\_data: data test set: Measured feature values
-   test\_labels: activity labels of the test set as numbers (six
    activities)
-   test\_subject:subject vector of the test set as numbers (10
    subjects)
-   features: Desciption of the features (columnames)
-   activity\_label\_<a href="file:activity" class="uri">file:activity</a>
    labels as text.

### Merge the training and the test dataset.

The second tranformation ist to merge the training and the test set by
rowbind which crates a complete data set with all observations and all
features (10299x561). I decided to keep the data in the wide form to
perform the analysis. I consider every feature as a variable. Therefore,
the featurenames from the features vector are assigned as variable names
to the complete dataset. Furthermore the labels vector and subject
vector from test and training set are merge via rbind.

### Extract only the measurements on the mean and standard deviation for each measurement.

The total data set is a huge dataset with 561 variables(features). In
this step only the variables with contains a “mean” or “std” in their
name are kept. The result ist a much smaller data set with only 79
variables.

### Uses descriptive activity names to name the activities in the data set/ Appropriately labels the data set with descriptive variable names.

The third and fourth transformation can not be seperated completly, In
the first step the subject vector and the labels vector are named
appropriate. In the next step the labels vector, the subject vector and
the small dataset are merged via cbind. This results into a complete
dataset with 81 variables which are named appropriate (two ID variables
and 79 feature variables).

The second step is to join the descriptive activity name to the dataset
using the activity number which is already a variable in the dataset.
Finally the activity number is replaced by the descriptive activity
name.

### From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The last transformation groups the final data set from step 4 by subject
and activity and calculates the mean of each combination. The result is
the tidy dataset with 180 observations, which means that every
observation represents one subject / activity combination.

Variables
=========

### ID Variables:

-   subject (numeric): Each row identifies the subject who performed the
    activity for each window sample. Its range is from 1 to 30.
-   activity (factor): A factor variable with 6 levels which describes
    the activity which is performed by the subject

### Feature Variables (numeric)

-   tBodyAcc-mean()-X
-   tBodyAcc-mean()-Z
-   tBodyAcc-std()-Y
-   tGravityAcc-mean()-X
-   tGravityAcc-mean()-Z
-   tGravityAcc-std()-Y
-   tBodyAccJerk-mean()-X
-   tBodyAccJerk-mean()-Z
-   tBodyAccJerk-std()-Y
-   tBodyGyro-mean()-X
-   tBodyGyro-mean()-Z
-   tBodyGyro-std()-Y
-   tBodyGyroJerk-mean()-X
-   tBodyGyroJerk-mean()-Z
-   tBodyGyroJerk-std()-Y
-   tBodyAccMag-mean()
-   tGravityAccMag-mean()
-   tBodyAccJerkMag-mean()
-   tBodyGyroMag-mean()
-   tBodyGyroJerkMag-mean()
-   fBodyAcc-mean()-X
-   fBodyAcc-mean()-Z
-   fBodyAcc-std()-Y
-   fBodyAcc-meanFreq()-X
-   fBodyAcc-meanFreq()-Z
-   fBodyAccJerk-mean()-Y
-   fBodyAccJerk-std()-X
-   fBodyAccJerk-std()-Z
-   fBodyAccJerk-meanFreq()-Y
-   fBodyGyro-mean()-X
-   fBodyGyro-mean()-Z
-   fBodyGyro-std()-Y
-   fBodyGyro-meanFreq()-X
-   fBodyGyro-meanFreq()-Z
-   fBodyAccMag-std()
-   fBodyBodyAccJerkMag-mean()
-   fBodyBodyAccJerkMag-meanFreq()
-   fBodyBodyGyroMag-std()
-   fBodyBodyGyroJerkMag-mean()
-   fBodyBodyGyroJerkMag-meanFreq()
-   tBodyAcc-mean()-Y
-   tBodyAcc-std()-X
-   tBodyAcc-std()-Z
-   tGravityAcc-mean()-Y
-   tGravityAcc-std()-X
-   tGravityAcc-std()-Z
-   tBodyAccJerk-mean()-Y
-   tBodyAccJerk-std()-X
-   tBodyAccJerk-std()-Z
-   tBodyGyro-mean()-Y
-   tBodyGyro-std()-X
-   tBodyGyro-std()-Z
-   tBodyGyroJerk-mean()-Y
-   tBodyGyroJerk-std()-X
-   tBodyGyroJerk-std()-Z
-   tBodyAccMag-std()
-   tGravityAccMag-std()
-   tBodyAccJerkMag-std()
-   tBodyGyroMag-std()
-   tBodyGyroJerkMag-std()
-   fBodyAcc-mean()-Y
-   fBodyAcc-std()-X
-   fBodyAcc-std()-Z
-   fBodyAcc-meanFreq()-Y
-   fBodyAccJerk-mean()-X
-   fBodyAccJerk-mean()-Z
-   fBodyAccJerk-std()-Y
-   fBodyAccJerk-meanFreq()-X
-   fBodyAccJerk-meanFreq()-Z
-   fBodyGyro-mean()-Y
-   fBodyGyro-std()-X
-   fBodyGyro-std()-Z
-   fBodyGyro-meanFreq()-Y
-   fBodyAccMag-mean()
-   fBodyAccMag-meanFreq()
-   fBodyBodyAccJerkMag-std()
-   fBodyBodyGyroMag-mean()
-   fBodyBodyGyroMag-meanFreq()
-   fBodyBodyGyroJerkMag-std()
