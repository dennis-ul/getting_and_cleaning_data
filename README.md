Data Set
--------

This readme provides information about the script used in the course
project of getting and cleaning data. The work is based on data
collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site where the data was obtained:

<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" class="uri">http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>

In this course project I transformed the raw data set into a tidy data
set which can be unsed for later analysis.

Script course project
---------------------

This scipt run\_analysis.R provides code for downloading and unzip the
data into the working directory and transform the raw data into a tidy
data set. The transformations are based on standard R functions as well
as the dplyr package.

In detail the following steps have been performed as requested.

1.  Download and unzip the file into current working directory.
2.  Merge the training and the test dataset.
3.  Extract only the measurements on the mean and standard deviation for
    each measurement.
4.  Uses descriptive activity names to name the activities in the data
    set
5.  Appropriately labels the data set with descriptive variable names.
6.  From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and each
    subject.

For further details regarding the data, variables and transformations
see CodeBook.md.
