#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names. 
#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
require(reshape2)
PATH = 'F:/zip/getdata_projectfiles_UCI HAR Dataset/'
train_subject<-read.table(paste(PATH,'train/subject_train.txt',sep = ''))
train_X <- read.table(paste(PATH,'train/X_train.txt',sep = ''))
train_y <- read.table(paste(PATH,'train/y_train.txt',sep = ''))
test_subject<-read.table(paste(PATH,'test/subject_test.txt',sep = ''))
test_X <- read.table(paste(PATH,'test/X_test.txt',sep = ''))
test_y <- read.table(paste(PATH,'test/y_test.txt',sep = ''))
feature_name<-read.table(paste(PATH,'features.txt',sep = ''))
feature_activity_name<-read.table(paste(PATH,'activity_labels.txt',sep = ''))
#------------------------------------------------------------------
test<-cbind(test_subject,test_y,test_X)
train<-cbind(train_subject,train_y,train_X)
all_data<-rbind(train,test)
colnames(all_data)<-c('subject','labels',t(feature_name[2]))
all_labels<-merge(feature_activity_name,all_data[1:2],by.x="V1",by.y="labels")
names(all_labels)<-c("labels","activities","subjects")
#--------------------------------------------------------------------
mean_all<-cbind(all_labels,all_data[ , grepl( "mean()" , names( all_data ) ) ])
required_all<-cbind(mean_all,all_data[ , grepl( "std()" , names( all_data ) ) ])
result<-aggregate(required_all[4:dim(required_all)[2]],list(required_all$subjects,required_all$labels),mean)

result<-merge(feature_activity_name,result,by.y="Group.2",by.x = "V1")
result$V1<-NULL
colnames(result)[1:2]<-c("activities","subjects")
#--------------------------------------------------------------
write.table(result,"tidy_dataset.txt",row.name=FALSE )
