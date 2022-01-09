features_paths <- list('UCI HAR Dataset/test/X_test.txt', 'UCI HAR Dataset/train/X_train.txt')
activities_paths <- list('UCI HAR Dataset/test/y_test.txt', 'UCI HAR Dataset/train/y_train.txt')
subject_paths <- list('UCI HAR Dataset/test/subject_test.txt', 'UCI HAR Dataset/train/subject_train.txt')
features_names_path <- 'UCI HAR Dataset/features.txt'
activity_labels_path <- 'UCI HAR Dataset/activity_labels.txt'

read.names <- function(filePath){
  con <- file(filePath)
  file_lines <- readLines(con)
  close(con)
  r <- regexpr('[a-z]+(.*)', file_lines)
  regmatches(file_lines, r)
}


read.features <- function(filePath){
  con <- file(filePath)
  file_lines <- readLines(con)
  close(con)
  
  temp <- strsplit(file_lines, ' ')
  temp <- lapply(temp, as.numeric)
  df <- data.frame()
  temp <- lapply(temp, function(x){row <- x[!is.na(x)]})
  temp <- do.call('rbind', temp)
  data.frame(temp)
}

read.actvity.labels <- function(filePath){
  con <- file(filePath)
  file_lines <- readLines(con)
  close(con)
  r <- regexpr('[A-Z_]+', file_lines)
  regmatches(file_lines, r)
}

read.subject <- function(filePath){
  con <- file(filePath)
  file_lines <- readLines(con)
  close(con)
  as.factor(file_lines)
}

read.activity <- function(filePath){
  con <- file(filePath)
  file_lines <- readLines(con)
  close(con)
  as.factor(file_lines)
}

main_script <- function(){
  
  ##merging the data sets
  test_featuers <- read.features(features_paths[[1]])
  train_features <- read.features(features_paths[[2]])
  
  features_names <- read.names(features_names_path)

  names(test_featuers) <- features_names
  names(train_features) <- features_names
  
  test_subject <- read.subject(subject_paths[[1]])
  train_subject <- read.subject(subject_paths[[2]])
  
  test_activity <- read.activity(activities_paths[[1]])
  train_activity <- read.activity(activities_paths[[2]])
  
  total_data <- cbind(subject = c(test_subject, train_subject), activity = c(test_activity, train_activity), rbind(test_featuers, train_features))
  
  ##extracting the mean and std values
  colNames <- names(total_data)
  r <- grep('mean', colNames)
  s <- grep('std', colNames)
  extract_names <- c('subject','activity',colNames[r], colNames[s])
  extracted_data <- total_data[,extract_names]
  
  ##labeling activities with descriptive labels
  activity_labels <- read.actvity.labels(activity_labels_path)
  extracted_data$activity <- activity_labels[extracted_data$activity]
 
  
  ##labeling variables with readable names
  first_element <- function(x){x[1]}
  temp <- strsplit(names(extracted_data), '\\(')
  new_names <- lapply(temp, first_element)
  readable_names <- sub('-',' ', new_names)
  names(extracted_data) <- readable_names
  extracted_data
}