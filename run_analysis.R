run_analysis <- function(x) {
  ## Load required libraries
  library(reshape2)
  
  ## Read the features data and assign appropriate column titles
  features<-read.table("./features.txt")
  activity_labels <- read.table("./activity_labels.txt",col.names=c("activity_id","activity_name"))
  
  ## Read the 3 relevant data files (subject ID, activity ID and activity measurement data) 
  ## from the wd and assign them appropriate column titles.
  subject_test<-read.table("./test/subject_test.txt")
  names(subject_test)<-c("volunteer_id")
  data_test<-read.table("./test/X_test.txt")
  names(data_test)<-features$V2
  activity_test<-read.table("./test/y_test.txt")
  names(activity_test)<-c("activity_id")

  ## Combine the 3 test data files.
  testData<-cbind(subject_test,activity_test,data_test)
  
  ## Repeat the above steps for the train data.
  subject_train<-read.table("./train/subject_train.txt")
  names(subject_train)<-c("volunteer_id")
  data_train<-read.table("./train/X_train.txt")
  names(data_train)<-features$V2
  activity_train<-read.table("./train/y_train.txt")
  names(activity_train)<-c("activity_id")
  trainData<-cbind(subject_train,activity_train,data_train)
  
  ## Combine the test and train data
  fullData<-rbind(testData,trainData)
  
  ## Keep only the mean and standard deviation of the measurements 
  final<-fullData[,grep("activity|volunteer_id|mean|std",names(fullData))]

  ## Combine the data set with the activity labels data
  descrnames <- merge(activity_labels,final,by.x="activity_id",by.y="activity_id",all=TRUE)
  
  ## Remove the activity ID column which is now redundant because of the activity name column
  descrnames[1]<-NULL
  
  ##Melt the dataset with the descriptive activity names for better handling
  data_melt <- melt(descrnames,id=c("activity_name","volunteer_id"))
  
  ## Cast the melted dataset according to  the average of each variable for each subject and 
  ## each activity
  mean_data = dcast(data_melt,activity_name + volunteer_id ~ variable,mean)
  
  ## Create a file with the new tidy data set
  write.table(mean_data,"./movement_analysis_tidy_data.txt", row.names=FALSE)
}