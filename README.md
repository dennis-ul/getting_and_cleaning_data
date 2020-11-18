Data Set
========

This readme provides information about the script used in the course
project of getting and cleaning data. The work is based on data
collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site where the data was obtained:

<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" class="uri">http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>

In this course project I transformed the raw data set into a tidy data
set which can be unsed for later analysis.

Script course project
=====================

This scipt run\_analysis.R provides code for downloading and unzip the
data into the working directory and transform the raw data into a tidy
data set. The transformations are based on standard R functions as well
as the dplyr package.

In detail the following transformations have been performed as
requested.

### 0 Download and unzip the file into current working directory.

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

### 1 Merge the training and the test dataset.

The second tranformation ist to merge the training and the test set by
rowbind which crates a complete data set with all observations and all
features (10299x561). I decided to keep the data in the wide form to
perform the analysis. I consider every feature as a variable. Therefore,
the featurenames from the features vector are assigned as variable names
to the complete dataset. Furthermore the labels vector and subject
vector from test and training set are merge via rbind.

### 2 Extract only the measurements on the mean and standard deviation for each measurement.

The total data set is a huge dataset with 561 variables(features). In
this step only the variables which are the mean or the standard
deviation of a signal are kept. The result ist a much smaller data set
with only 66 variables.

### 3 Uses descriptive activity names to name the activities in the data set/ 4 Appropriately labels the data set with descriptive variable names.

The third and fourth transformation can not be seperated completly, In
the first step the subject vector and the labels vector are named
appropriate. In the next step the labels vector, the subject vector and
the small dataset are merged via cbind. This results into a complete
dataset with 68 variables which are named appropriate (two ID variables
and 66 feature variables).

The second step is to join the descriptive activity name to the dataset
using the activity number which is already a variable in the dataset.
Finally the activity number is replaced by the descriptive activity
name.

### 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The last transformation groups the final data set from step 4 by subject
and activity and calculates the mean of each combination. The result is
the tidy dataset with 180 observations, which means that every
observation represents one subject / activity combination.
