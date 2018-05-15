setwd("C:/Users/akash/Documents/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection")


total_rows <- 184903890
train_rows <- 4000000
skip_rows_train <- total_rows - train_rows


library(dplyr)
library(data.table)


train <- fread("C:/Users/akash/Documents/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/train.csv", skip = skip_rows_train, nrows = train_rows, 
               col.names =c("ip", "app", "device", "os", "channel", "click_time", 
                            "attributed_time", "is_attributed"),
               showProgress = FALSE) %>%
  select(-c(attributed_time))
invisible(gc())
