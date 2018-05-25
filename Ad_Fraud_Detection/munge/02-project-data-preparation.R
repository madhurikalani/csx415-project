#Setting the working directory
setwd("C:/Users/akash/Documents/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection")

#Segregating class with Positive value
train_1 <- train[train$is_attributed==1,]
train_1 <- na.omit(train_1, cols =c("ip", "app", "device", "os", "channel", "click_time", "is_attributed") )

#Segregating class with negative value
train_0 <- train[train$is_attributed==0,]
train_0 <- na.omit(train_0, cols =c("ip", "app", "device", "os", "channel", "click_time", "is_attributed") )


#Union
train_data <- as.data.frame(funion(train_1[1:1000,],train_0[1:100000,],all=FALSE))

rm(train)
invisible(gc())

#Structure
str(train_data)


library(lubridate)

#Adding new features to the training data set for data analysis
train_data$click_time <- as_datetime(train_data$click_time)
train_data$click_hour <- hour(train_data$click_time)
train_data$click_day  <- weekdays(train_data$click_time)

#Dividing the data into 70% training and 30% test dataset

library(caret)

val_ratio=0.3

#Partition is based on class is_attributed value 0 and 1
train.partition <- createDataPartition(train_data$is_attributed, p = val_ratio, list = FALSE)

#Test dataset
df.test   <- train_data[train.partition,]

#Train dataset
df.train  <- train_data[-train.partition,]


rm(train_1)
rm(train_0)
rm(train_data)
invisible(gc())
