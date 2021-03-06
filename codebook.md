##Code book for the course project
###study design
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeGravityAccelerometerJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

###the descriptions of each column
* subject_id: The IDs (1-30) representing each subject in this study (30 in total) 
* activity_labels: The activities by the subject from one of the following (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* timeBodyAccelerometer-mean-X:  the average of timeBodyAccelerometer-mean-X for each activity and each subject
* timeBodyAccelerometer-mean-Y: the average of timeBodyAccelerometer-mean-Y for each activity and each subject
* timeBodyAccelerometer-mean-Z: the average of timeBodyAccelerometer-mean-Z for each activity and each subject
* timeGravityAccelerometer-mean-X: the average of timeGravityAccelerometer-mean-X for each activity and each subject
* timeGravityAccelerometer-mean-Y: the average of timeGravityAccelerometer-mean-Y for each activity and each subject
* timeGravityAccelerometer-mean-Z: the average of timeGravityAccelerometer-mean-Z for each activity and each subject
* timeBodyAccelerometerJerk-mean-X: the average of timeBodyAccelerometerJerk-mean-X for each activity and each subject
* timeBodyAccelerometerJerk-mean-Y: the average of timeBodyAccelerometerJerk-mean-Y for each activity and each subject
* timeBodyAccelerometerJerk-mean-Z: the average of timeBodyAccelerometerJerk-mean-Z for each activity and each subject
* timeBodyGyroscope-mean-X: the average of timeBodyGyroscope-mean-X for each activity and each subject
* timeBodyGyroscope-mean-Y: the average of timeBodyGyroscope-mean-Y for each activity and each subject
* timeBodyGyroscope-mean-Z: the average of timeBodyGyroscope-mean-Z for each activity and each subject
* timeBodyGyroscopeJerk-mean-X: the average of timeBodyGyroscopeJerk-mean-X for each activity and each subject
* timeBodyGyroscopeJerk-mean-Y: the average of timeBodyGyroscopeJerk-mean-Y for each activity and each subject
* timeBodyGyroscopeJerk-mean-Z: the average of timeBodyGyroscopeJerk-mean-Z for each activity and each subject
* timeBodyAccelerometerMagnitude-mean: the average of timeBodyAccelerometerMagnitude-mean for each activity and each subject
* timeGravityAccelerometerMagnitude-mean: the average of timeGravityAccelerometerMagnitude-mean for each activity and each subject
* timeBodyAccelerometerJerkMagnitude-mean: the average of timeBodyAccelerometerJerkMagnitude-mean for each activity and each subject
* timeBodyGyroscopeMagnitude-mean: the average of timeBodyGyroscopeMagnitude-mean for each activity and each subject
* timeBodyGyroscopeJerkMagnitude-mean: the average of timeBodyGyroscopeJerkMagnitude-mean for each activity and each subject
* frequencyBodyAccelerometer-mean-X: the average of frequencyBodyAccelerometer-mean-X for each activity and each subject
* frequencyBodyAccelerometer-mean-Y: the average of frequencyBodyAccelerometer-mean-Y for each activity and each subject
* frequencyBodyAccelerometer-mean-Z: the average of frequencyBodyAccelerometer-mean-Z for each activity and each subject
* frequencyBodyAccelerometer-meanFreq-X: the average of frequencyBodyAccelerometer-meanFreq-X for each activity and each subject
* frequencyBodyAccelerometer-meanFreq-Y: the average of frequencyBodyAccelerometer-meanFreq-Y for each activity and each subject
* frequencyBodyAccelerometer-meanFreq-Z: the average of frequencyBodyAccelerometer-meanFreq-Z for each activity and each subject
* frequencyBodyAccelerometerJerk-mean-X: the average of frequencyBodyAccelerometerJerk-mean-X for each activity and each subject
* frequencyBodyAccelerometerJerk-mean-Y: the average of frequencyBodyAccelerometerJerk-mean-Y for each activity and each subject
* frequencyBodyAccelerometerJerk-mean-Z: the average of frequencyBodyAccelerometerJerk-mean-Z for each activity and each subject
* frequencyBodyAccelerometerJerk-meanFreq-X: the average of frequencyBodyAccelerometerJerk-meanFreq-X for each activity and each subject
* frequencyBodyAccelerometerJerk-meanFreq-Y: the average of frequencyBodyAccelerometerJerk-meanFreq-Y for each activity and each subject
* frequencyBodyAccelerometerJerk-meanFreq-Z: the average of frequencyBodyAccelerometerJerk-meanFreq-Z for each activity and each subject
* frequencyBodyGyroscope-mean-X: the average of frequencyBodyGyroscope-mean-X for each activity and each subject
* frequencyBodyGyroscope-mean-Y: the average of frequencyBodyGyroscope-mean-Y for each activity and each subject
* frequencyBodyGyroscope-mean-Z: the average of frequencyBodyGyroscope-mean-Z for each activity and each subject
* frequencyBodyGyroscope-meanFreq-X: the average of frequencyBodyGyroscope-meanFreq-X for each activity and each subject
* frequencyBodyGyroscope-meanFreq-Y: the average of frequencyBodyGyroscope-meanFreq-Y for each activity and each subject
* frequencyBodyGyroscope-meanFreq-Z: the average of frequencyBodyGyroscope-meanFreq-Z for each activity and each subject
* frequencyBodyAccelerometerMagnitude-mean: the average of frequencyBodyAccelerometerMagnitude-mean for each activity and each subject
* frequencyBodyAccelerometerMagnitude-meanFreq: the average of frequencyBodyAccelerometerMagnitude-meanFreq for each activity and each subject
* frequencyBodyBodyAccelerometerJerkMagnitude-mean: the average of frequencyBodyBodyAccelerometerJerkMagnitude-mean for each activity and each subject
* frequencyBodyBodyAccelerometerJerkMagnitude-meanFreq: the average of frequencyBodyBodyAccelerometerJerkMagnitude-meanFreq for each activity and each subject
* frequencyBodyBodyGyroscopeMagnitude-mean: the average of frequencyBodyBodyGyroscopeMagnitude-mean for each activity and each subject
* frequencyBodyBodyGyroscopeMagnitude-meanFreq: the average of frequencyBodyBodyGyroscopeMagnitude-meanFreq for each activity and each subject
* frequencyBodyBodyGyroscopeJerkMagnitude-mean: the average of frequencyBodyBodyGyroscopeJerkMagnitude-mean for each activity and each subject
* frequencyBodyBodyGyroscopeJerkMagnitude-meanFreq: the average of frequencyBodyBodyGyroscopeJerkMagnitude-meanFreq for each activity and each subject
* timeBodyAccelerometer-std-X: the average of timeBodyAccelerometer-std-X for each activity and each subject
* timeBodyAccelerometer-std-Y: the average of timeBodyAccelerometer-std-Y for each activity and each subject
* timeBodyAccelerometer-std-Z: the average of timeBodyAccelerometer-std-Z for each activity and each subject
* timeGravityAccelerometer-std-X: the average of timeGravityAccelerometer-std-X for each activity and each subject
* timeGravityAccelerometer-std-Y: the average of timeGravityAccelerometer-std-Y for each activity and each subject
* timeGravityAccelerometer-std-Z: the average of timeGravityAccelerometer-std-Z for each activity and each subject
* timeBodyAccelerometerJerk-std-X: the average of timeBodyAccelerometerJerk-std-X for each activity and each subject
* timeBodyAccelerometerJerk-std-Y: the average of timeBodyAccelerometerJerk-std-Y for each activity and each subject
* timeBodyAccelerometerJerk-std-Z: the average of timeBodyAccelerometerJerk-std-Z for each activity and each subject
* timeBodyGyroscope-std-X: the average of timeBodyGyroscope-std-X for each activity and each subject
* timeBodyGyroscope-std-Y: the average of timeBodyGyroscope-std-Y for each activity and each subject
* timeBodyGyroscope-std-Z: the average of timeBodyGyroscope-std-Z for each activity and each subject
* timeBodyGyroscopeJerk-std-X: the average of timeBodyGyroscopeJerk-std-X for each activity and each subject
* timeBodyGyroscopeJerk-std-Y: the average of timeBodyGyroscopeJerk-std-Y for each activity and each subject
* timeBodyGyroscopeJerk-std-Z: the average of timeBodyGyroscopeJerk-std-Z for each activity and each subject
* timeBodyAccelerometerMagnitude-std: the average of timeBodyAccelerometerMagnitude-std for each activity and each subject
* timeGravityAccelerometerMagnitude-std: the average of timeGravityAccelerometerMagnitude-std for each activity and each subject
* timeBodyAccelerometerJerkMagnitude-std: the average of timeBodyAccelerometerJerkMagnitude-std for each activity and each subject
* timeBodyGyroscopeMagnitude-std: the average of timeBodyGyroscopeMagnitude-std for each activity and each subject
* timeBodyGyroscopeJerkMagnitude-std: the average of timeBodyGyroscopeJerkMagnitude-std for each activity and each subject
* frequencyBodyAccelerometer-std-X: the average of frequencyBodyAccelerometer-std-X for each activity and each subject
* frequencyBodyAccelerometer-std-Y: the average of frequencyBodyAccelerometer-std-Y for each activity and each subject
* frequencyBodyAccelerometer-std-Z: the average of frequencyBodyAccelerometer-std-Z for each activity and each subject
* frequencyBodyAccelerometerJerk-std-X: the average of frequencyBodyAccelerometerJerk-std-X for each activity and each subject
* frequencyBodyAccelerometerJerk-std-Y: the average of frequencyBodyAccelerometerJerk-std-Y for each activity and each subject
* frequencyBodyAccelerometerJerk-std-Z: the average of frequencyBodyAccelerometerJerk-std-Z for each activity and each subject
* frequencyBodyGyroscope-std-X: the average of frequencyBodyGyroscope-std-X for each activity and each subject
* frequencyBodyGyroscope-std-Y: the average of frequencyBodyGyroscope-std-Y for each activity and each subject
* frequencyBodyGyroscope-std-Z: the average of frequencyBodyGyroscope-std-Z for each activity and each subject
* frequencyBodyAccelerometerMagnitude-std: the average of frequencyBodyAccelerometerMagnitude-std for each activity and each subject
* frequencyBodyBodyAccelerometerJerkMagnitude-std: the average of frequencyBodyBodyAccelerometerJerkMagnitude-std for each activity and each subject
* frequencyBodyBodyGyroscopeJerkMagnitude-std: the average of frequencyBodyBodyGyroscopeJerkMagnitude-std for each activity and each subject
* frequencyBodyBodyGyroscopeMagnitude-std: the average of frequencyBodyBodyGyroscopeMagnitude-std for each activity and each subject
