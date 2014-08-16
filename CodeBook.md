---------------------------------
title: "CodeBook.md"
date: "Saturday, August 16, 2014"
---------------------------------

PROTOCOL & CODEBOOK FOR COURSERA PROJECT GETTING AND CLEANING DATA

-------
CONTENT
-------
1. Source of Data
2. Variables
4. Dataprocessing (run_analysis.r)

--------------
SOURCE OF DATA
--------------

Source of Data:
        http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
        
Datafile:
        https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
        
Date dataset retrieved:
        Sat Aug 9 16:36:24 2014

---------
VARIABLES
---------

subject
        subject identifier
        values: integer
                1, 2, 3 ... 30
        # files: subject_test.txt, subject_train.txt
        
activity
        activity identifier
        values: categorical
                1 WALKING
                2 WALKING_UPSTAIRS
                3 WALKING_DOWNSTAIRS
                4 SITTING
                5 STANDING
                6 LAYING
        # file: activity_labels.txt
        
tBodyAccMeanX
        Mean of body linear acceleration signal derived in time, direction X
        values: numeric
                -1 .. 1
        
tBodyAccMeanY
        Mean of body linear acceleration signal derived in time, direction Y
        values: numeric
                -1 .. 1
        
tBodyAccMeanZ
        Mean of body linear acceleration signal derived in time, direction Z
        values: numeric
                -1 .. 1
        
tBodyAccStdX
        Standarddeviation of body linear acceleration signal derived in time,
        direction X
        values: numeric
                -1 .. 1
        
tBodyAccStdY
        Standarddeviation of body linear acceleration signal derived in time,
        direction Y
        values: numeric
                -1 .. 1
        
tBodyAccStdZ
        Standarddeviation of body linear acceleration signalderived in time,
        direction Z
        values: numeric
                -1 .. 1
        
tGravityAccMeanX
        Mean of gravity acceleration signal derived in time, direction X
        values: numeric
                -1 .. 1
        
tGravityAccMeanY
        Mean of gravity acceleration signal derived in time, direction Y
        values: numeric
                -1 .. 1
       
tGravityAccMeanZ
        Mean of gravity acceleration signal derived in time, direction Z
        values: numeric
                -1 .. 1
       
tGravityAccStdX
        Standarddeviation of gravity acceleration signal derived in time,
        direction X
        values: numeric
                -1 .. 1
        
tGravityAccStdY
        Standarddeviation of gravity acceleration signal derived in time,
        direction Y
        values: numeric
                -1 .. 1
        
tGravityAccStdZ
        Standarddeviation of gravity acceleration signal derived in time,
        direction Z
        values: numeric
                -1 .. 1
        
tBodyAccJerkMeanX
        Mean of body linear acceleration jerk signal derived in time, 
        direction X
        values: numeric
                -1 .. 1
        
tBodyAccJerkMeanY
        Mean of body linear acceleration jerk signal derived in time, 
        direction Y
        values: numeric
                -1 .. 1
 
tBodyAccJerkMeanZ
        Mean of body linear acceleration jerk signal derived in time, 
        direction Z
        values: numeric
                -1 .. 1
 
tBodyAccJerkStdX
        Standarddeviation of body linear acceleration jerk signal in time,
        direction X
        values: numeric
                -1 .. 1
        
tBodyAccJerkStdY
        Standarddeviation of body linear acceleration jerk signal in time,
        direction Y
        values: numeric
                -1 .. 1
        
tBodyAccJerkStdZ
        Standarddeviation of body linear acceleration jerk signal in time,
        direction Z
        values: numeric
                -1 .. 1
        
tBodyGyroMeanX
        Mean body angular velocity derived in time, direction X
        values: numeric
                -1 .. 1
        
tBodyGyroMeanY
        Mean body angular velocity derived in time, direction Y
        values: numeric
                -1 .. 1
        
tBodyGyroMeanZ
        Mean body angular velocity derived in time, direction Z
        values: numeric
                -1 .. 1
        
tBodyGyroStdX
        Standarddeviation body angular velocity derived in time, direction X
        values: numeric
                -1 .. 1
        
tBodyGyroStdY
        Standarddeviation body angular velocity derived in time, direction Y
        values: numeric
                -1 .. 1
 
tBodyGyroStdZ
        Standarddeviation body angular velocity derived in time, direction Z
        values: numeric
                -1 .. 1
 
tBodyGyroJerkMeanX
        Mean body angular velocity jerk signal derived in time, direction X
        values: numeric
                -1 .. 1
        
tBodyGyroJerkMeanY
        Mean body angular velocity jerk signal derived in time, direction Y
        values: numeric
                -1 .. 1
        
tBodyGyroJerkMeanZ
        Mean body angular velocity jerk signal derived in time, direction Z
        values: numeric
                -1 .. 1
        
tBodyGyroJerkStdX
        Standarddeviation body angular velocity jerk signal derived in time,
        direction X
        values: numeric
                -1 .. 1
        
tBodyGyroJerkStdY
        Standarddeviation body angular velocity jerk signal derived in time,
        direction Y
        values: numeric
                -1 .. 1
        
tBodyGyroJerkStdZ
        Standarddeviation body angular velocity jerk signal derived in time,
        direction Z
        values: numeric
                -1 .. 1
        
tBodyAccMagMean
        Mean magnitude of linear body acceleration (3D)
        values: numeric
                -1 .. 1
                
tBodyAccMagStd
        Standarddeviation magnitude of linear body acceleration (3D)
        values: numeric
                -1 .. 1
        
tGravityAccMagMean
        Mean magnitude gravity acceleration signal (3D)
        values: numeric
                -1 .. 1
        
tGravityAccMagStd
        Standarddeviation magnitude gravity acceleration signal (3D)
        values: numeric
                -1 .. 1
        
tBodyAccJerkMagMean
        Mean magnitude body acceleration jerk signal (3D)
        values: numeric
                -1 .. 1
        
tBodyAccJerkMagStd
        Standarddeviation magnitude body acceleration jerk signal (3D)
        values: numeric
                -1 .. 1
        
tBodyGyroMagMean
        Mean magnitude body angular velocity signal (3D)
        values: numeric
                -1 .. 1
        
tBodyGyroMagStd
        Standarddeviation magnitude body angular velocity signal (3D)
        values: numeric
                -1 .. 1
        
tBodyGyroJerkMagMean
        Mean magnitude body angular velocity jerk signal (3D)
        values: numeric
                -1 .. 1
        
tBodyGyroJerkMagStd
        Standarddeviation body angular velocity jerk signal (3D)
        values: numeric
                -1 .. 1
        
fBodyAccMeanX
        Mean frequency domain signal for linear body acceleration, dimension X
        values: numeric
                -1 .. 1
        
fBodyAccMeanY
        Mean frequency domain signal for linear body acceleration, dimension Y
        values: numeric
        
fBodyAccMeanZ        
        Mean frequency domain signal for linear body acceleration, dimension Z
        values: numeric
                -1 .. 1
        
fBodyAccStdX
        Standardeviation frequency domain signal for linear body acceleration,
        dimension X
        values: numeric
                -1 .. 1
        
fBodyAccStdY
        Standardeviation frequency domain signal for linear body acceleration,
        dimension Y
        values: numeric
                -1 .. 1
        
fBodyAccStdZ
        Standardeviation frequency domain signal for linear body acceleration,
        dimension Z
        values: numeric
                -1 .. 1
        
fBodyAccJerkMeanX
        Mean frequency domain signal for linear body acceleration jerk signal,
        dimension X
        values: numeric
                -1 .. 1
        
fBodyAccJerkMeanY
        Mean frequency domain signal for linear body acceleration jerk signal,
        dimension Y
        values: numeric
                -1 .. 1
        
fBodyAccJerkMeanZ
        Mean frequency domain signal for linear body acceleration jerk signal,
        dimension Z
        values: numeric
                -1 .. 1
        
fBodyAccJerkStdX
        Standardeviation frequency domain signal for linear body acceleration
        jerk signal, dimension X
        values: numeric
                -1 .. 1
        
fBodyAccJerkStdY
        Standardeviation frequency domain signal for linear body acceleration
        jerk signal, dimension Y
        values: numeric
                -1 .. 1
        
fBodyAccJerkStdZ
        Standardeviation frequency domain signal for linear body acceleration
        jerk signal, dimension Z
        values: numeric
                -1 .. 1
        
fBodyGyroMeanX
        Mean frequency domain signal for body angular velocity signal, 
        dimension X
        values: numeric
                -1 .. 1
        
fBodyGyroMeanY
        Mean frequency domain signal for body angular velocity signal, 
        dimension Y
        values: numeric
                -1 .. 1
        
fBodyGyroMeanZ
        Mean frequency domain signal for body angular velocity signal,
        dimension Z
        values: numeric
                -1 .. 1
        
fBodyGyroStdX
        Standarddeviation frequency domain signal for body angular velocity
        signal, dimension X
        values: numeric
                -1 .. 1
        
fBodyGyroStdY
        Standarddeviation frequency domain signal for body angular velocity
        signal, dimension Y
        values: numeric
                -1 .. 1
        
fBodyGyroStdZ
        Standarddeviation frequency domain signal for body angular velocity
        signal, dimension Z
        values: numeric
                -1 .. 1
        
fBodyAccMagMean
        Mean of magnitude frequency domain signal for body linear acceleration
        signal (3D)
        values: numeric
                -1 .. 1
        
fBodyAccMagStd
        Standarddeviation of magnitude frequency domain signal for body linear
        acceleration signal (3D)
        values: numeric
                -1 .. 1
        
fBodyBodyAccJerkMagMean
        Variable not explained in features_info.txt
        values: numeric
                -1 .. 1
               
fBodyBodyAccJerkMagStd
        Variable not explained in features_info.txt
        values: numeric
                -1 .. 1
             
fBodyBodyGyroMagMean
        Variable not explained in features_info.txt
        values: numeric
                -1 .. 1
             
fBodyBodyGyroMagStd
        Variable not explained in features_info.txt
        values: numeric
                -1 .. 1
             
fBodyBodyGyroJerkMagMean
        Variable not explained in features_info.txt
        values: numeric
                -1 .. 1
             
fBodyBodyGyroJerkMagStd
        Variable not explained in features_info.txt
        values: numeric
                -1 .. 1
               
               
-----------------------------
DATAPROCESSING run_analysis.r
-----------------------------
1. Read datafiles with training (_train) and test (_test) data and store them in corresponding dataframes.
2. Join dataframes of test and train data ("joinedData", 10299x561), activity labels ("joinedLabels", 10299x1) and subject indices ("joinedSubjecs", 10299x1) [by indexing the test and the training data, it would be possible, to distinguish later between the two populations, this was not done here]
3. The features.txt file contains all variable names. Read the features.txt file and store it in variable "features". Create variable "meansIndex" that indicates only the columns that give mean or standarddeviation values (66 columns).According to this index reduce "joinedData" to the 66 required variables.
4. Clean the variable names. Remove "()" and "-" in the names, change first letter of "mean" and "std" to uppercase.
5. Read activity_labels.txt and store in variable "activity" (6 levels of activity)
6. Clean activity levels in the second column of "activity": change all names to lower case, remove underscores, set letter after underscore to uppercase.
7. Replace values in "joinedLabels" by values in "activity".
8. Combine "joinedSubjects", "joinedLabels" and "joinedData" by column to dataframe "mergedData".Rename first two columns "subject" and "activity".
9. Write "mergedData" to "merged_data.txt" file.
10. 30 subjects with 6 different activity levels result in 180 subject-activity-combinations.For each of the 66 variables calculate the means for the 180 combinations.
11. Initialize the 180x68 dataframe "dataWithMeans".
12. Calculate means of variables for all activities per subject in two nested for-loops and write results in corresponding position in "dataWithMeans".
13. Write "dataWithMeans" to "data_with_means.txt".
