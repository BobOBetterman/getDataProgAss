testData <- read.table("UCI HAR Dataset/test/X_test.txt")
featuresLab <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

featuresLab <- featuresLab[ , -1]

names(testData) <- featuresLab

testActLab <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "Activity Labels")

testSubID <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "Subject ID")
testSubID$Test.Subject <- TRUE

testDataSet <- cbind(testSubID, testActLab, testData)

trainData <- read.table("UCI HAR Dataset/train/X_train.txt")
names(trainData) <- featuresLab

trainActLab <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "Activity Labels")

trainSubID <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "Subject ID")
trainSubID$Test.Subject <- FALSE

trainDataSet <- cbind(trainSubID, trainActLab, trainData)

fullData <- rbind(trainDataSet, testDataSet)

titleMean <- grepl("mean", names(fullData), ignore.case = TRUE)
titleSTD <- grepl("std", names(fullData), ignore.case = TRUE)

keepCols <- as.logical(titleMean + titleSTD)
keepCols[1:3] <- TRUE

truncDataSet <- fullData[ , keepCols]

titleNotMeanFreq <- grep("meanFreq", names(truncDataSet), ignore.case = TRUE, invert = TRUE)

truncDataSet <- truncDataSet[ , titleNotMeanFreq]

actLab <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

for(i in seq_along(truncDataSet$Activity.Labels)) {
    truncDataSet$Activity.Labels[i] <- actLab[actLab[1] == truncDataSet$Activity.Labels[i], 2]
}

truncDataSet <- truncDataSet[ , -2]

meltData <- melt(truncDataSet, id.vars = c("Subject.ID", "Activity.Labels"))

tidyData <- dcast(meltData, Subject.ID + Activity.Labels ~ variable, mean)