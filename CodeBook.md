This code book provides the additions and modification to the code book of the original data that can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
The data was collected from the UCI Machine Learning Repository, and is titled Human Activity Recognition Using Smartphones Data Set. It 
is built from the recordings of 30 subjects performing activities of daily living while wearing a waist-mounted smartphone (Samsung Galaxy 
S II) with embedded inertial sensors. The data was recorded from the accelerometer and gyroscope (3-axial raw signals tAcc-XYZ and 
tGyro-XYZ) in the smartphone. The accelerometer and gyroscope time domain signals were captured at a constant rate of 50 Hz. They were 
filtered using a filters with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and 
gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and 
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, 
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

The following signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ, tBodyGyro-XYZ, tBodyGyroJerk-XYZ, tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, 
fBodyGyroJerkMag

The set of variables that were estimated from these signals are (more are detailed in the original data set, but are not used in this 
R-Script): 
mean(): Mean value
std(): Standard deviation
Additional vectors obtained by averaging the signals in a signal window sample: gravityMean, tBodyAccMean, tBodyAccJerkMean, 
tBodyGyroMean, tBodyGyroJerkMean


Other variable added in the R-script:
activity_name: Descriptive name of each subject's activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
volunteer_id : Identifier, identifying each subject Type: Integer Values: 1 : 30
