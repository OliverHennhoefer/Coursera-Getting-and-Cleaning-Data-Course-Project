url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dir <- "./data"
file <- "data.zip"
filename <- paste(dir, "/", file, sep = "")

# Creates folder 'data' when non-existent and downloads the required data
if (!file.exists(filename)) {
  dir.create(dir)
  download.file(url = url, destfile = file)
}

# Creates folder 'data' when non-existent and unzips the required data into 'data'
if (!file.exists(dir)) {
  dir.create(dir)
  utils::unzip(zipfile = file, exdir = dir)
}

# Reading Data
x.train <- read.table(paste(dir, "/UCI HAR Dataset/train/X_train.txt", sep = ""))
y.train <- read.table(paste(dir, "/UCI HAR Dataset/train/Y_train.txt", sep = ""))
s.train <- read.table(paste(dir, "/UCI HAR Dataset/train/subject_train.txt", sep = ""))
x.test <- read.table(paste(dir, "/UCI HAR Dataset/test/X_test.txt", sep = ""))
y.test <- read.table(paste(dir, "/UCI HAR Dataset/test/Y_test.txt", sep = ""))
s.test <- read.table(paste(dir, "/UCI HAR Dataset/test/subject_test.txt", sep = ""))

# Merging the training set and the test sets to create one data set (TASK1)
x.data <- rbind(x.train, x.test)
y.data <- rbind(y.train, y.test)
subject <- rbind(s.train, s.test)

# Clearing Memory
rm(x.train, y.train, s.train, x.test, y.test, s.test)

# Reading Features
feature <- read.table(paste(dir, "/UCI HAR Dataset/features.txt", sep = ""))

# Naming X Dataset with Features
names(x.data) <- feature[,2]

# Reading Activity
activity <- read.table(paste(dir, "/UCI HAR Dataset/activity_labels.txt",sep = ""))

# Extracting only the measurements on mean and standard deviation for each measurement (TASK2)
# Searches exclusively for 'mean()' and 'std()'
mean_sd.cols <- grep(pattern = "mean\\(\\)|std\\(\\)", as.character(feature[,2]))
mean_sd.names <- feature[mean_sd.cols,2]

# Subsets X Dateset by the Columns with 'mean'/'std' in Name
x.data <- x.data[mean_sd.cols]

# Binding remaining X Dataset with Rest of the Data
whole.data <- cbind(subject, y.data, x.data)

# Naming Columns 
colnames(whole.data) <- c("subject", "activity", tolower(mean_sd.names))

# Using descriptive Activity Names to name the Activities in the Data Set (TASK3)
whole.data$activity <- factor(whole.data$activity, levels = activity[,1], labels = activity[,2])

# Converting 'subject' to a Factor Variable
whole.data$subject <- as.factor(whole.data$subject)

# Appropriately labeling the Data Set with descriptive Variable Names. (TASK4)
names(whole.data) <- gsub("std", "StandardDeviation", names(whole.data))
names(whole.data) <- gsub("mean", "Mean", names(whole.data))
names(whole.data) <- gsub("^t", "time", names(whole.data))
names(whole.data) <- gsub("^f", "frequency", names(whole.data))
names(whole.data) <- gsub("acc", "Accelerometer", names(whole.data))
names(whole.data) <- gsub("gyro", "Gyroscope", names(whole.data))
names(whole.data) <- gsub("mag", "Magnitude", names(whole.data))
names(whole.data) <- gsub("body", "Body", names(whole.data))
names(whole.data) <- gsub("BodyBody", "Body", names(whole.data))
names(whole.data) <- gsub("gravity", "Gravity", names(whole.data))
names(whole.data) <- gsub("jerk", "", names(whole.data))
names(whole.data) <- gsub("\\(\\)", "", names(whole.data))
names(whole.data) <- gsub("-", "", names(whole.data))
names(whole.data) <- c("subject", "activity", gsub("y$", "Y", names(whole.data)[3:length(names(whole.data))])) #to prevent activit'Y'
names(whole.data) <- gsub("x$", "X", names(whole.data))
names(whole.data) <- gsub("z", "Z", names(whole.data))

# Creatioinga tidy Data Set with the Mean of each Variable for each Activity and each Subject.
tidy <- aggregate(. ~subject + activity, whole.data, mean)
