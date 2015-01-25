setwd("C:/Users/ben/Desktop/Training/coursera/cleaningdata")
library(dplyr)
library(reshape2)

if (!file.exists("project")) {
    dir.create("project")
}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./project/uci.zip")
unzip("./project/uci.zip",exdir="./project")
file.rename("./project/UCI HAR Dataset","./project/uci")

testSet <- read.table("./project/uci/test/X_test.txt")
testLabels <- read.table("./project/uci/test/y_test.txt")
subjectTest <- read.table("./project/uci/test/subject_test.txt")

trainSet <- read.table("./project/uci/train/X_train.txt")
trainLabels <- read.table("./project/uci/train/y_train.txt")
subjectTrain <- read.table("./project/uci/train/subject_train.txt")

testSet1 <- cbind(testLabels,testSet)
testSet2 <- cbind(subjectTest,testSet1)

trainSet1 <- cbind(trainLabels,trainSet)
trainSet2 <- cbind(subjectTrain,trainSet1)

allSet <- rbind(testSet2,trainSet2)
features <- read.table("./project/uci/features.txt")


all_colnames <- c("subject_id","activity_labels",as.character(features$V2))
colnames(allSet) <- all_colnames

mean_index <- grep("mean()",all_colnames)
std_index <- grep("std()",all_colnames)
selectSet <- allSet[,c(1,2,mean_index,std_index)]

activityLabels <- read.table("./project/uci/activity_labels.txt")
activityLabels <- arrange(activityLabels,V1)
selectSet$activity_labels <- activityLabels$V2[selectSet$activity_labels]

selectSetColnames <- colnames(selectSet)
selectSetColnames <- gsub('^t','time',selectSetColnames)
selectSetColnames <- gsub('^f','frequency',selectSetColnames)
selectSetColnames <- gsub('Acc','Accelerometer',selectSetColnames)
selectSetColnames <- gsub('Gyro','Gyroscope',selectSetColnames)
selectSetColnames <- gsub('Mag','Magnitude',selectSetColnames)
selectSetColnames <- gsub("\\(\\)","",selectSetColnames)
colnames(selectSet) <- selectSetColnames

tidySet <- ddply(selectSet,.(subject_id,activity_labels),numcolwise(mean))
write.table(tidySet, file="./project/tidySet.txt",quote=FALSE, row.name=FALSE)
