library(dplyr)



run_analysis <- function(basedir=getwd(), outfile=paste(getwd(), "/cleanupdata.course.results.txt", sep="")) {
  features <- read.table(paste(basedir, "/features.txt", sep=""))
  activities <- read.table(paste(basedir, "/activity_labels.txt", sep=""))
  names(activities) <- c("activity.id", "activity.name")
  
  read_set <- function(basedir=getwd(), type="train") {
    X_data <- read.table(paste(basedir,"/",type,"/X_",type,".txt", sep=""), col.names=features[,2], colClasses = rep("numeric", length(features)) )
    Y_data <- read.table(paste(basedir,"/",type,"/y_",type,".txt", sep=""), col.names=c("activity"), colClasses = c("numeric"))
    subject_data <- read.table(paste(basedir,"/",type,"/subject_",type,".txt", sep=""), col.names=c("subject"), colClasses=c("numeric"))
  
    cbind(X_data, subject_data, Y_data)
  }
  
  addActivityName <- function(df) {
    mutate(df, activity.name=activities[match(activity, activities$activity.id),"activity.name"])
  }
  
  phone.training <- read_set()
  phone.test <- read_set(type="test")
  phone.all <- rbind(phone.training, phone.test) %>% addActivityName
  
  phone.all.trimmed <- phone.all %>% select(contains(".mean."), contains(".std."), activity.name, subject)
  
  course.project.result <- phone.all.trimmed %>% group_by(subject, activity.name) %>% summarize_each(funs(mean))
  
  write.table(course.project.result, file=outfile, row.names=F)
}

run_analysis()
