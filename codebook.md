## Codebook
# Description
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

# The Dataset
The data is taken from UCI HAR Dataset ([download](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)). This dataset provides following variables:

1. subject - Participant ID (numeric)
2. activity - Activity ID (character)
3. Mean + standard deviation for following features (all numeric, float)
 * "timeBodyAccelerometerMeanX" 
* "timeBodyAccelerometerMeanY" 
* "timeBodyAccelerometerMeanZ" 
* "timeBodyAccelerometerStandardDeviationX" 
* "timeBodyAccelerometerStandardDeviationY" 
* "timeBodyAccelerometerStandardDeviationZ" 
* "timeGravityAccelerometerMeanX" 
* "timeGravityAccelerometerMeanY" 
* "timeGravityAccelerometerMeanZ" 
* "timeGravityAccelerometerStandardDeviationX" 
* "timeGravityAccelerometerStandardDeviationY" 
* "timeGravityAccelerometerStandardDeviationZ" 
* "timeBodyAccelerometerJerkMeanX" 
* "timeBodyAccelerometerJerkMeanY" 
* "timeBodyAccelerometerJerkMeanZ" 
* "timeBodyAccelerometerJerkStandardDeviationX" 
* "timeBodyAccelerometerJerkStandardDeviationY" 
* "timeBodyAccelerometerJerkStandardDeviationZ" 
* "timeBodyGyroscopeMeanX" 
* "timeBodyGyroscopeMeanY" 
* "timeBodyGyroscopeMeanZ" 
* "timeBodyGyroscopeStandardDeviationX" 
* "timeBodyGyroscopeStandardDeviationY" 
* "timeBodyGyroscopeStandardDeviationZ" 
* "timeBodyGyroscopeJerkMeanX" 
* "timeBodyGyroscopeJerkMeanY" 
* "timeBodyGyroscopeJerkMeanZ" 
* "timeBodyGyroscopeJerkStandardDeviationX" 
* "timeBodyGyroscopeJerkStandardDeviationY" 
* "timeBodyGyroscopeJerkStandardDeviationZ" 
* "timeBodyAccelerometerMagnitudeMean" 
* "timeBodyAccelerometerMagnitudeStandardDeviation" 
* "timeGravityAccelerometerMagnitudeMean" 
* "timeGravityAccelerometerMagnitudeStandardDeviation" 
* "timeBodyAccelerometerJerkMagnitudeMean" 
* "timeBodyAccelerometerJerkMagnitudeStandardDeviation" 
* "timeBodyGyroscopeMagnitudeMean" 
* "timeBodyGyroscopeMagnitudeStandardDeviation" 
* "timeBodyGyroscopeJerkMagnitudeMean" 
* "timeBodyGyroscopeJerkMagnitudeStandardDeviation" 
* "frequencyBodyAccelerometerMeanX" 
* "frequencyBodyAccelerometerMeanY" 
* "frequencyBodyAccelerometerMeanZ" 
* "frequencyBodyAccelerometerStandardDeviationX" 
* "frequencyBodyAccelerometerStandardDeviationY" 
* "frequencyBodyAccelerometerStandardDeviationZ" 
* "frequencyBodyAccelerometerJerkMeanX" 
* "frequencyBodyAccelerometerJerkMeanY" 
* "frequencyBodyAccelerometerJerkMeanZ" 
* "frequencyBodyAccelerometerJerkStandardDeviationX" 
* "frequencyBodyAccelerometerJerkStandardDeviationY" 
* "frequencyBodyAccelerometerJerkStandardDeviationZ" 
* "frequencyBodyGyroscopeMeanX" 
* "frequencyBodyGyroscopeMeanY" 
* "frequencyBodyGyroscopeMeanZ" 
* "frequencyBodyGyroscopeStandardDeviationX" 
* "frequencyBodyGyroscopeStandardDeviationY" 
* "frequencyBodyGyroscopeStandardDeviationZ" 
* "frequencyBodyAccelerometerMagnitudeMean" 
* "frequencyBodyAccelerometerMagnitudeStandardDeviation" 
* "frequencyBodyAccelerometerJerkMagnitudeMean" 
* "frequencyBodyAccelerometerJerkMagnitudeStandardDeviation" 
* "frequencyBodyGyroscopeMagnitudeMean" 
* "frequencyBodyGyroscopeMagnitudeStandardDeviation" 
* "frequencyBodyGyroscopeJerkMagnitudeMean" 
* "frequencyBodyGyroscopeJerkMagnitudeStandardDeviation"


