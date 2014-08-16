---------------------------------
title: "README.md"
date: "Saturday, August 16, 2014"
---------------------------------

PROTOCOL FOR COURSERA PROJECT GETTING AND CLEANING DATA

               
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
11. Initialize the 180x68 dataframe "tidyData".
12. Calculate means of variables for all activities per subject in two nested for-loops and write results in corresponding position in "tidyData".
13. Write "tidyData" to "tidyData.txt".
