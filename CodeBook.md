---
title: "UCI dataset CodeBook"
output: html_notebook
---
### **Original data sources**

Human Activity Recognition Using Smartphones Dataset
Version 1.0  

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Università degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws  

### **Experiment Description**
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% for the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### **Data Set Description**

* The data set produced by the script in this project has been obtained by the following:
  + Merging the train and test data from the original data set.
  + Extracting the measurements on the mean and standard deviation for each measurement.
  + Using descriptive activity names to name the activities in the data set.
  + Labeling the data set with descriptive variable names.
  + Creating a second, independent tidy data set with the average of each variable for each activity and each subject.


### **Variables**

* Units:
  + Gravity : g
  + Angular velocity : radians/second
  
* Values Range:
  + All the numeric measurements are normalized and bounded within [-1,1].
  + Subject is in the range of 1 to 30.
  
Variable | Label
------------- | -------------
subject|label of the exprimet's subject
activity|the experiment activity
tbodyacc mean x|time body acceleration mean on X
tbodyacc mean y|time body acceleration mean on Y
tbodyacc mean z|time body acceleration mean on Z
tgravityacc mean x|time Gravity acceleration mean on X
tgravityacc mean y|time Gravity acceleration mean on Y
tgravityacc mean z|time Gravity acceleration mean on Z
tbodyaccjerk mean x|time body acceleration jerk mean on X
tbodyaccjerk mean y|time body acceleration jerk mean on Y
tbodyaccjerk mean z|time body acceleration jerk mean on Z
tbodygyro mean x|time body gyroscope mean on X
tbodygyro mean y|time body gyroscope mean on Y
tbodygyro mean z|time body gyroscope mean on Z
tbodygyrojerk mean x|time body gyroscope jerk mean on X
tbodygyrojerk mean y|time body gyroscope jerk mean on Y
tbodygyrojerk mean z|time body gyroscope jerk mean on Z
tbodyaccmag mean |time body acceleration magnitude mean 
tgravityaccmag mean |time Gravity acceleration magnitude mean 
tbodyaccjerkmag mean |time body acceleration Jerk magnitude mean 
tbodygyromag mean |time body gyroscope magnitude mean 
tbodygyrojerkmag mean |time body gyroscope Jerk magnitude mean 
fbodyacc mean x|frequency body acceleration mean on X
fbodyacc mean y|frequency body acceleration mean on Y
fbodyacc mean z|frequency body acceleration mean on Z
fbodyacc meanfreq x|frequency body acceleration meanFreq on X
fbodyacc meanfreq y|frequency body acceleration meanFreq on Y
fbodyacc meanfreq z|frequency body acceleration meanFreq on Z
fbodyaccjerk mean x|frequency body acceleration jerk mean on X
fbodyaccjerk mean y|frequency body acceleration jerk mean on Y
fbodyaccjerk mean z|frequency body acceleration jerk mean on Z
fbodyaccjerk meanfreq x|frequency body acceleration jerk meanFreq on X
fbodyaccjerk meanfreq y|frequency body acceleration jerk meanFreq on Y
fbodyaccjerk meanfreq z|frequency body acceleration jerk meanFreq on Z
fbodygyro mean x|frequency body gyroscope mean on X
fbodygyro mean y|frequency body gyroscope mean on Y
fbodygyro mean z|frequency body gyroscope mean on Z
fbodygyro meanfreq x|frequency body gyroscope meanFreq on X
fbodygyro meanfreq y|frequency body gyroscope meanFreq on Y
fbodygyro meanfreq z|frequency body gyroscope meanFreq on Z
fbodyaccmag mean |frequency body acceleration magnitude mean 
fbodyaccmag meanfreq |frequency body acceleration magnitude meanFreq 
fbodyaccjerkmag mean |frequency body acceleration Jerk magnitude mean 
fbodyaccjerkmag meanfreq |frequency body acceleration Jerk magnitude meanFreq 
fbodygyromag mean |frequency body gyroscope magnitude mean 
fbodygyromag meanfreq |frequency body gyroscope magnitude meanFreq 
fbodygyrojerkmag mean |frequency body gyroscope Jerk magnitude mean 
fbodygyrojerkmag meanfreq |frequency body gyroscope Jerk magnitude meanFreq 
tbodyacc std x|time body acceleration standard deviation on X
tbodyacc std y|time body acceleration standard deviation on Y
tbodyacc std z|time body acceleration standard deviation on Z
tgravityacc std x|time Gravity acceleration standard deviation on X
tgravityacc std y|time Gravity acceleration standard deviation on Y
tgravityacc std z|time Gravity acceleration standard deviation on Z
tbodyaccjerk std x|time body acceleration Jerkstandard deviation on X
tbodyaccjerk std y|time body acceleration Jerkstandard deviation on Y
tbodyaccjerk std z|time body acceleration Jerkstandard deviation on Z
tbodygyro std x|time body gyroscope standard deviation on X
tbodygyro std y|time body gyroscope standard deviation on Y
tbodygyro std z|time body gyroscope standard deviation on Z
tbodygyrojerk std x|time body gyroscope Jerkstandard deviation on X
tbodygyrojerk std y|time body gyroscope Jerkstandard deviation on Y
tbodygyrojerk std z|time body gyroscope Jerkstandard deviation on Z
tbodyaccmag std |time body acceleration magnitude standard deviation 
tgravityaccmag std |time Gravity acceleration magnitude standard deviation 
tbodyaccjerkmag std |time body acceleration Jerk magnitude standard deviation 
tbodygyromag std |time body gyroscope magnitude standard deviation 
tbodygyrojerkmag std |time body gyroscope Jerk magnitude standard deviation 
fbodyacc std x|frequency body acceleration standard deviation on X
fbodyacc std y|frequency body acceleration standard deviation on Y
fbodyacc std z|frequency body acceleration standard deviation on Z
fbodyaccjerk std x|frequency body acceleration Jerkstandard deviation on X
fbodyaccjerk std y|frequency body acceleration Jerkstandard deviation on Y
fbodyaccjerk std z|frequency body acceleration Jerkstandard deviation on Z
fbodygyro std x|frequency body gyroscope standard deviation on X
fbodygyro std y|frequency body gyroscope standard deviation on Y
fbodygyro std z|frequency body gyroscope standard deviation on Z
fbodyaccmag std |frequency body acceleration magnitude standard deviation 
fbodyaccjerkmag std |frequency body acceleration Jerk magnitude standard deviation 
fbodygyromag std |frequency body gyroscope magnitude standard deviation 
fbodygyrojerkmag std |frequency body gyroscope Jerk magnitude standard deviation 

### **Original Data set lisence**

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
