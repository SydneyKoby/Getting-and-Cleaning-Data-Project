# Getting-and-Cleaning-Data-Project

This project contains R-script, run_analysis.R, that takes raw data from Samsung Galaxy S smartphone and outputs clean data. 

Data description:

The data was collected from the UCI Machine Learning Repository, and is titled Human Activity Recognition Using Smartphones Data Set. It is built from the recordings of 30 subjects performing activities of daily living while wearing a waist-mounted smartphone (Samsung Galaxy S II) with embedded inertial sensors. The subjects were between 19 and 48 years old, and performed six activities: walking, walking up stairs, walking down stairs, sitting, standing and laying. The sensors 3-axial acceleration and velocity. The data was randomly separated into two sets: the data from 70% of the subjects were labelled ’training’, and the rest were ’test’.

The original data contains the following files:
	•	'features.txt': List of all features. 
	•	'activity_labels.txt': List of class labels and their activity name. 
	•	'train/X_train.txt': Training set. 
	•	'train/y_train.txt': Training labels. 
	•	'train/subject_train.txt': ID's of subjects in the training data 
	•	'test/X_test.txt': Test set. 
	•	'test/y_test.txt': Test labels. 
	•	'test/subject_test.txt': ID's of subjects in the training data


Script description:

The R-script, run_analysis.R, takes the data described above, and outputs a ‘tidy’ dataset. The steps of the script are as follows:
- The various text files are accessed from their respective folders (as organized from the original downloaded folder), and are loaded as data frames.
- The columns are given appropriate titles, and the numbered activities performed by the subjects are replaced with names in the data.
- The data is combined into one data frame.
- Only the mean and the standard deviation of each set of measurements from the sensors is kept, the rest is removed from the data frame.
- A second data set with the average of each variable and subject is created.


Acknowledgements:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


License:

Use of the Run_Analysis.R script is free for all users.
Use of the resulting dataset "tidy_movement_data.txt" in publications must be acknowledged by referencing the following publication [1]
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the author for its use or misuse. Any commercial use is prohibited.
 
