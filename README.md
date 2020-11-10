# Coursera Course Project: Getting and Cleaning Data

* This work is part of the Coursera Course: Geting and Cleaning Data

The included `run_analysis.R` does the following:
1. Defines statics like the source of the data as url, the folder within he working directory etc.
2. Creates a data folder when necessary and downloads&unzips the required raw data file
3. Imports the different data files to work with
4. Binds the test sets and the training sets. 
5. Imports the feature file and names the columns of the merged 'x' dataset with it
6. Imports the activity file
7. Subset the 'x' dataset by columns with 'mean' or 'std'
8. Binds all merged data sets to one complete data set
9. Replaces the activity factors by their descriptive activity name
10. Labels the data set appropriately (lower case + camel case, meaningful names, ...)
11. Creates a tidy data set with the arithmetic mean for each activity and each subject
12. Saves the tidy data set to the data source folder
