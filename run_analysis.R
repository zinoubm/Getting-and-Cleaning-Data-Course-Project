library(dplyr)

##file_paths
features_paths <- list('UCI HAR Dataset/test/X_test.txt', 'UCI HAR Dataset/train/X_train.txt')
activities_paths <- list('UCI HAR Dataset/test/y_test.txt', 'UCI HAR Dataset/train/y_train.txt')
subject_paths <- list('UCI HAR Dataset/test/subject_test.txt', 'UCI HAR Dataset/train/subject_train.txt')
features_names_path <- 'UCI HAR Dataset/features.txt'
activity_labels_path <- 'UCI HAR Dataset/activity_labels.txt'

##defining all the functions needed to read the data
read.names <- function(filePath){
  df <- read.table(filePath)
  df[,2]
}
read.features <- function(filePath){
  df <- read.table(filePath)
}
read.actvity.labels <- function(filePath){
  df <- read.table(filePath)
  df[,2]
}
read.subject <- function(filePath){
  df <- read.table(filePath)
  as.factor(df[,1])
}
read.activity <- function(filePath){
  df <- read.table(filePath)
  as.factor(df[,1])
}

##defining the main function: this function will run the script
main_script <- function(){
  ##1_merging the data sets
  test_features <- read.features(features_paths[[1]])
  train_features <- read.features(features_paths[[2]])
  
  features_names <- read.names(features_names_path)

  names(test_features) <- features_names
  names(train_features) <- features_names
  
  test_subject <- read.subject(subject_paths[[1]])
  train_subject <- read.subject(subject_paths[[2]])
  
  test_activity <- read.activity(activities_paths[[1]])
  train_activity <- read.activity(activities_paths[[2]])
  
  total_data <- cbind(subject = c(test_subject, train_subject), activity = c(test_activity, train_activity), rbind(test_features, train_features))
  
  ##2_extracting the mean and std values
  colNames <- names(total_data)
  r <- grep('mean()', colNames)
  s <- grep('std()', colNames)
  extract_names <- c('subject','activity',colNames[r], colNames[s])
  extracted_data <- total_data[,extract_names]
  
  ##3_labeling activities with descriptive labels
  activity_labels <- read.actvity.labels(activity_labels_path)
  extracted_data$activity <- activity_labels[extracted_data$activity]
  
  ##4_labeling variables with readable names
  new_names <- names(extracted_data)
  readable_names <- sub('\\-',' ', new_names)
  readable_names <- sub('\\(\\)',' ', readable_names)
  readable_names <- sub('\\-','', readable_names)
  names(extracted_data) <- tolower(readable_names)
  
  ##5_creating an independent tidy data set with the average of each variable
  result <- extracted_data %>% 
            group_by(subject, activity) %>%
            summarize_each(list(mean))
  result$subject <- as.numeric(result$subject)
  result <- arrange(result, subject)
}