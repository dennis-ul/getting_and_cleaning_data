Data
====

The tidy data is presented in its wide form. Which means that every
feature is considered as one variable. In the tidy data set every
observation is a combination of a subject and a specific activity. The
tidy data set consists of 68 variables which can be separated into two
ID Variables which define which subject has done which activity and 66
feature variables which are measured within the experiment.

Variables
=========

### ID Variables:

-   subject (numeric): Each row identifies the subject who performed the
    activity. Its range is from 1 to 30.
-   activity (factor): A factor variable with 6 levels which describes
    the activity which is performed by the subject

### Feature Variables (numeric)

The features come from the accelerometer and gyroscope 3-axial raw
signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix ‘t’ to
denote time) were captured at a constant rate of 50 Hz. Then they were
filtered using a median filter and a 3rd order low pass Butterworth
filter with a corner frequency of 20 Hz to remove noise. Similarly, the
acceleration signal was then separated into body and gravity
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another
low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag,
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the ‘f’ to
indicate frequency domain signals).

From these signals the estimated mean value mean() and standard
deviation std() is used in this dataset.

-   tBodyAcc-mean()-Y
-   tBodyAcc-mean()-Z
-   tBodyAcc-std()-X
-   tBodyAcc-std()-Y
-   tBodyAcc-std()-Z
-   tGravityAcc-mean()-X
-   tGravityAcc-mean()-Y
-   tGravityAcc-mean()-Z
-   tGravityAcc-std()-X
-   tGravityAcc-std()-Y
-   tGravityAcc-std()-Z
-   tBodyAccJerk-mean()-X
-   tBodyAccJerk-mean()-Y
-   tBodyAccJerk-mean()-Z
-   tBodyAccJerk-std()-X
-   tBodyAccJerk-std()-Y
-   tBodyAccJerk-std()-Z
-   tBodyGyro-mean()-X
-   tBodyGyro-mean()-Y
-   tBodyGyro-mean()-Z
-   tBodyGyro-std()-X
-   tBodyGyro-std()-Y
-   tBodyGyro-std()-Z
-   tBodyGyroJerk-mean()-X
-   tBodyGyroJerk-mean()-Y
-   tBodyGyroJerk-mean()-Z
-   tBodyGyroJerk-std()-X
-   tBodyGyroJerk-std()-Y
-   tBodyGyroJerk-std()-Z
-   tBodyAccMag-mean()
-   tBodyAccMag-std()
-   tGravityAccMag-mean()
-   tGravityAccMag-std()
-   tBodyAccJerkMag-mean()
-   tBodyAccJerkMag-std()
-   tBodyGyroMag-mean()
-   tBodyGyroMag-std()
-   tBodyGyroJerkMag-mean()
-   tBodyGyroJerkMag-std()
-   fBodyAcc-mean()-X
-   fBodyAcc-mean()-Y
-   fBodyAcc-mean()-Z
-   fBodyAcc-std()-X
-   fBodyAcc-std()-Y
-   fBodyAcc-std()-Z
-   fBodyAccJerk-mean()-X
-   fBodyAccJerk-mean()-Y
-   fBodyAccJerk-mean()-Z
-   fBodyAccJerk-std()-X
-   fBodyAccJerk-std()-Y
-   fBodyAccJerk-std()-Z
-   fBodyGyro-mean()-X
-   fBodyGyro-mean()-Y
-   fBodyGyro-mean()-Z
-   fBodyGyro-std()-X
-   fBodyGyro-std()-Y
-   fBodyGyro-std()-Z
-   fBodyAccMag-mean()
-   fBodyAccMag-std()
-   fBodyBodyAccJerkMag-mean()
-   fBodyBodyAccJerkMag-std()
-   fBodyBodyGyroMag-mean()
-   fBodyBodyGyroMag-std()
-   fBodyBodyGyroJerkMag-mean()
-   fBodyBodyGyroJerkMag-std()
