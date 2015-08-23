#Read in the test data, making it available for the program to manipulate.
testData <- read.table("UCI HAR Dataset/test/X_test.txt")

#Read in the labels to be applied to each column of data
featuresLab <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

#The labels have an index column that needs to be dropped
featuresLab <- featuresLab[ , -1]

#Name each of the columns of the measurements with their names, taken from the features file
names(testData) <- featuresLab

#These are the activity labels for the test data
testActLab <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "Activity Labels")

#These are the test subject IDs. Another column is added to keep track of whether the subject was from the test
#or train data sets
testSubID <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "Subject ID")
testSubID$Test.Subject <- TRUE

#Combine all the test data into one data set
testDataSet <- cbind(testSubID, testActLab, testData)

#Repeat all the above steps with the training data
trainData <- read.table("UCI HAR Dataset/train/X_train.txt")
names(trainData) <- featuresLab

trainActLab <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "Activity Labels")

trainSubID <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "Subject ID")
trainSubID$Test.Subject <- FALSE

trainDataSet <- cbind(trainSubID, trainActLab, trainData)

#Combining the train and test data sets
fullData <- rbind(trainDataSet, testDataSet)

#Finding logical vectors for each column indicating whether they are mean or std measurements
titleMean <- grepl("mean", names(fullData), ignore.case = TRUE)
titleSTD <- grepl("std", names(fullData), ignore.case = TRUE)

#Combine the mean and std logical vectors to get one logical vector indicating whether a column is mean or std (TRUE) or neither (FALSE)
keepCols <- as.logical(titleMean + titleSTD)
#Make sure we keep the first three data columns, as they indicate whom the measurements are for
keepCols[1:3] <- TRUE

#Subset the data to get only the measurements with mean or std
truncDataSet <- fullData[ , keepCols]

#Figure out which columns are not "meanFreq", as these are not measurements of the "mean", so we can drop them from our data set
titleNotMeanFreq <- grep("meanFreq", names(truncDataSet), ignore.case = TRUE, invert = TRUE)

truncDataSet <- truncDataSet[ , titleNotMeanFreq]

#Figure out which columns are not "angle()" as these are measurements between two vectors, not means or stds
titleNotAngle <- grep("angle", names(truncDataSet), ignore.case = TRUE, invert = TRUE)

truncDataSet <- truncDataSet[ , titleNotAngle]

#Read in the codes for the activity labels
actLab <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

#Replace the numbers in "Activity.Labels" with the human readable values describing each action
for(i in seq_along(truncDataSet$Activity.Labels)) {
    truncDataSet$Activity.Labels[i] <- actLab[actLab[1] == truncDataSet$Activity.Labels[i], 2]
}

#Drop the unnecessary column I added in the beginning indicating whether subjects were from the train or test data set
truncDataSet <- truncDataSet[ , -2]

#Melt the data, making all the measurements variables of the "Subject.ID" and "Activity.Labels" columns
meltData <- melt(truncDataSet, id.vars = c("Subject.ID", "Activity.Labels"))

#Finally, cast the data into a tidy data frame where the mean of each variable is calculated for each combination of "Subject.ID" and "Activity.Labels"
tidyData <- dcast(meltData, Subject.ID + Activity.Labels ~ variable, mean)