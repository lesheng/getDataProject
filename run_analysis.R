#load libraries required by this script
library(plyr)
library(dplyr)
library(reshape2)

#create a folder "project" if it doesn't exist.
if (!file.exists("project")) {
    dir.create("project")
}

#download the data for course project
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./project/uci.zip")

#unzip the downloaded data and rename the folder name for the data
unzip("./project/uci.zip",exdir="./project")
file.rename("./project/UCI HAR Dataset","./project/uci")

#read the data for test set 
testSet <- read.table("./project/uci/test/X_test.txt")
testLabels <- read.table("./project/uci/test/y_test.txt")
subjectTest <- read.table("./project/uci/test/subject_test.txt")

#read the data for training set
trainSet <- read.table("./project/uci/train/X_train.txt")
trainLabels <- read.table("./project/uci/train/y_train.txt")
subjectTrain <- read.table("./project/uci/train/subject_train.txt")

#Step 1: merges the training and the test sets to create one data set as "allSet"
testSet1 <- cbind(testLabels,testSet)
testSet2 <- cbind(subjectTest,testSet1)
trainSet1 <- cbind(trainLabels,trainSet)
trainSet2 <- cbind(subjectTrain,trainSet1)
allSet <- rbind(testSet2,trainSet2)

#read the variable names and update the column names for allSet
features <- read.table("./project/uci/features.txt")
all_colnames <- c("subject_id","activity_labels",as.character(features$V2))
colnames(allSet) <- all_colnames

#Step 2: Extracts the columns on the means and standard deviation and save as a new data frame "selectSet" 
mean_index <- grep("mean()",all_colnames)
std_index <- grep("std()",all_colnames)
selectSet <- allSet[,c(1,2,mean_index,std_index)]

#Step 3: Replace numric values in activity labels column with descriptive activity names 
activityLabels <- read.table("./project/uci/activity_labels.txt")
activityLabels <- arrange(activityLabels,V1)
selectSet$activity_labels <- activityLabels$V2[selectSet$activity_labels]

#Step 4: Update the column names with descriptive variable names
selectSetColnames <- colnames(selectSet)
selectSetColnames <- gsub('^t','time',selectSetColnames)
selectSetColnames <- gsub('^f','frequency',selectSetColnames)
selectSetColnames <- gsub('Acc','Accelerometer',selectSetColnames)
selectSetColnames <- gsub('Gyro','Gyroscope',selectSetColnames)
selectSetColnames <- gsub('Mag','Magnitude',selectSetColnames)
selectSetColnames <- gsub("\\(\\)","",selectSetColnames)
colnames(selectSet) <- selectSetColnames

#Step 5: Create a tidy set with the average of each variable for each actvitity and each subject, save it as a text file "tidySet.txt"
tidySet <- ddply(selectSet,.(subject_id,activity_labels),numcolwise(mean))
write.table(tidySet, file="./project/tidySet.txt",quote=FALSE, row.name=FALSE)
