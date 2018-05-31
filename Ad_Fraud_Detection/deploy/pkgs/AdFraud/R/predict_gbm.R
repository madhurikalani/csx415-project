#' @title Gradient Boosting Classification Model To Find Out Whether A User Downloads The App Or Not
#'
#' @description This package builds a Gradient Boosting Classification model to find out whether the user downloaded the app or not based on training the model with training dataset.
#'
#' @param NULL
#'
#' @return predictgbm
#'
#' @examples  predictgbm()
#'
#' @export predictgbm

library(caret)
library(data.table)
library(lubridate)
library(dplyr)
predictgbm <- function() {

  invisible(gc())

  setwd("~/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/pkgs/AdFraud")
  test <- fread("C:/Users/akash/Documents/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/pkg/AdFraud/data/test.csv", skip = 1000000, nrows = 48576,
                 col.names =c("click_id","ip", "app", "device", "os", "channel", "click_time"),
                 showProgress = FALSE) %>% select(-c(click_id))

  test$is_attributed <- 0
  test$is_attributed <- as.integer(test$is_attributed)
  test$click_time <- as_datetime(test$click_time)
  test <- as.data.frame(test)

  invisible(gc())

  print(" Loading Trained Model Object")
    setwd("~/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/pkgs/AdFraud/data")
  model_gbm <- readRDS("model_gbm.RDS")
  print("Summary of trained GBM")

  print("Model Prediction")
  predict <- predict(model_gbm,test)

  sub <- data.table(click_id = test$ip, is_attributed = NA)
  sub <- as.data.frame(sub)
  sub$is_attributed <- predict

  print("Saving predictions in .csv files for later use")
  fwrite(sub, "sub_gbm.csv")

  print("File saved in /data directory")
  invisible(gc())

}

