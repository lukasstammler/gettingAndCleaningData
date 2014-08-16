# ------------------------------------------------------------------------------
# Coursera: Getting and Cleaning Data
# Course Project

# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each 
#    measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each 
#    variable for each activity and each subject. 
# ------------------------------------------------------------------------------

#setwd("C:/Users/Lukas/OneDrive/Dokumente/Coursera/03_ObtainingData/project")
setwd("C:/Users/Lukas/SkyDrive/Dokumente/Coursera/03_ObtainingData/project")
getwd() 
# dir.create("results")

## read the data in
trainData <- read.table("./train/X_train.txt")
trainLabel <- read.table("./train/y_train.txt")
trainSubject <- read.table("./train/subject_train.txt")
testData <- read.table("./test/X_test.txt")
testLabel <- read.table("./test/y_test.txt") 
testSubject <- read.table("./test/subject_test.txt")

# work out how the files fit together
dim(trainData)          # [1] 7352  561 # vars see features.txt
dim(trainLabel)         # [1] 7352    1
dim(trainSubject)       # [1] 7352    1
dim(testData)           # [1] 2947  561 # vars see features.txt
dim(testLabel)          # [1] 2947    1
dim(testSubject)        # [1] 2947    1

# put the data together
joinedData <- rbind(trainData, testData)
dim(joinedData)           # [1] 10299   561
joinedLabels <- rbind(trainLabel, testLabel)
dim(joinedLabels)          # [1] 10299     1
joinedSubjects <- rbind(trainSubject, testSubject)
dim(joinedSubjects)        # [1] 10299     1

# picking out the mean and standard deviation columns and subsetting 
# to those ones 
features <- read.table("./UCI HAR Dataset/features.txt")
dim(features)  # [1] 561   2
head(features) #

meanSdIndex <- grep("mean\\(\\)|std\\(\\)", features[, 2])
length(meanSdIndex) # [1] 66 mean or sd variables

joinedData <- joinedData[, meanSdIndex] # subset dataframe
dim(joinedData) # [1] 10299    66

names(joinedData)
names(joinedData) <- gsub("\\(\\)", "", features[meanSdIndex, 2]) # remove "()"
# names(joinedData)
names(joinedData) <- gsub("mean", "Mean", names(joinedData)) 
names(joinedData) <- gsub("std", "Std", names(joinedData))
names(joinedData) <- gsub("-", "", names(joinedData)) 
names(joinedData)

# descriptive activity names 
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
str(activity)
activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
substr(activity[2, 2], 8, 8) <- toupper(substr(activity[2, 2], 8, 8))
substr(activity[3, 2], 8, 8) <- toupper(substr(activity[3, 2], 8, 8))

activityLabel <- activity[joinedLabels[, 1], 2]
str(activityLabel)

str(joinedLabels)
joinedLabels[, 1] <- activityLabel
names(joinedLabels) <- "activity"
str(joinedLabels)

head(joinedSubjects)
names(joinedSubjects) <- "subject"

mergedData <- cbind(joinedSubjects, joinedLabels, joinedData)
dim(mergedData) # 10299*68
str(mergedData)

write.table(mergedData, "./results/merged_data.txt", row.names=FALSE) 
# write.csv(mergedData, "./results/merged_data.csv")

# test <- read.table("./results/merged_data.txt")
# str(test)

# ---------------------------------------------------------------
# produce a tidy data set of the means of the variables for each 
# combination of variable, subject, and activity
# ---------------------------------------------------------------

# prepare dataframe tidyData
subjectLen <- length(table(joinedSubjects)) # [1] 30 subjects
activityLen <- dim(activity)[1] # [1] 6 rows in activity
columnLen <- dim(mergedData)[2] # [1] 68 cols in mergedData
tidyData <- matrix(NA, nrow=subjectLen*activityLen, ncol=columnLen) 
tidyData <- as.data.frame(tidyData)
colnames(tidyData) <- colnames(mergedData)
str(tidyData)

# calculate mean for each activity for each subject
row <- 1
for(i in 1:subjectLen) {
        for(j in 1:activityLen) {
                tidyData[row, 1] <- sort(unique(joinedSubjects)[, 1])[i]
                tidyData[row, 2] <- activity[j, 2]
                bool1 <- i == mergedData$subject
                bool2 <- activity[j, 2] == mergedData$activity
                tidyData[row, 3:columnLen] <- 
                        colMeans(mergedData[bool1&bool2, 3:columnLen])
                row <- row + 1
        }
}
head(tidyData)
write.table(tidyData, "./results/tidy_data.txt", row.names=FALSE) 
# write.csv(tidyData, "tidy_data.csv") 

# test <- read.table("./results/tidy_data.txt")
# str(test)
# test[1:20, 1:5]

# --------------------------------
# for Codebook variable definition
# --------------------------------
test <- read.table("./results/tidy_data.txt")

imax = 66
minMax <- matrix(NA, nrow=imax, ncol=4)
minMax <- as.data.frame(minMax)
names(minMax) <- c("Label", "Min", "Max", "Mean")
minMax[, 1] <- as.character(minMax[, 1])
minMax[, c(2:4)] <- as.numeric(minMax[, 2])
# str(minMax)

for(i in 1:imax){
        j <- i
        i <- i+2
        minMax$Label[j] <- colnames(test[i])
        minMax$Min[j] <- min(test[, i])
        minMax$Max[j] <- max(test[, i])
        minMax$Mean[j] <- mean(test[, i])
}
summary(minMax)      
