

setwd("C://Coursera//Data Science R//3 Getting and Cleaning Data")

library(dplyr)


#Download and unzip the file into current working directory.

url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile = ".//hardata.zip")

#unzip files into current working directory

zipF<- ".//hardata.zip"
outDir<-".//hardata"
unzip(zipF,exdir=outDir)
rm(list=ls())
list.files()

#define files

train_data_file<-".//hardata//UCI HAR Dataset//train//X_train.txt"           
train_label_file<- ".//hardata//UCI HAR Dataset//train//y_train.txt"         
train_subject_file <- ".//hardata//UCI HAR Dataset//train//subject_train.txt" 
test_data_file<-".//hardata//UCI HAR Dataset//test//X_test.txt"              
test_label_file<- ".//hardata//UCI HAR Dataset//test//y_test.txt"            
test_subject_file <-  ".//hardata//UCI HAR Dataset//test//subject_test.txt"    
features_file <- ".//hardata//UCI HAR Dataset//features.txt"                  
activity_label_file <- ".//hardata//UCI HAR Dataset//activity_labels.txt"     

#reads training and test files into R

train_data<-read.table(train_data_file)
train_labels<-read.table(train_label_file) 
train_subject<-read.table(train_subject_file)
test_data<-read.table(test_data_file)
test_labels<-read.table(test_label_file) 
test_subject<-read.table(test_subject_file)


features<-read.table(features_file) 
activity<-read.table(activity_label_file)
names(activity)<-c("activity_no", "activity")

#merge training and test data

total_data <- rbind(train_data, test_data)
names(total_data)<-features$V2
total_labels <- rbind(train_labels, test_labels) 
total_subject <- rbind(train_subject, test_subject)

#Extract only the measurements on the mean and standard deviation for each measurement.

grep_mean<-grep("mean()",names(total_data), value=FALSE, fixed=TRUE)
grep_std<-grep("std()",names(total_data), value=FALSE, fixed=TRUE)

total_data_small<-total_data[,sort(combine(grep_mean,grep_std))]
names(total_data_small)

#Uses descriptive activity names to name the activities in the data set
#and appropriately labels the data set with descriptive variable names.

names(total_subject)<-"subject"
names(total_labels)<-"activity_no"


data_complete <- cbind(total_subject, total_labels, total_data_small)
final_data <- merge(x=data_complete,y=activity, by.x="activity_no", by.y = "activity_no")
final_data <- final_data %>% select(subject,activity,everything(),-activity_no)

# creates a second, independent tidy data set with the average of each variable for each activity and each subject.

data_tidy<-final_data %>%
            group_by(subject, activity) %>%
            summarize_all(mean)

write.table(data_tidy, ".\\data_tidy.txt", row.name=FALSE)


