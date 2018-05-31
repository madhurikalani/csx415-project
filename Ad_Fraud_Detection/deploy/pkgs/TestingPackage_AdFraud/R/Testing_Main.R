
hello <- function() {
  print("Hello, there!")
}

library(testthat)
source("~/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/pkgs/AdFraud/R/predict_gbm.R")
test_results <- test_dir("~/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/pkgs/TestingPackage_AdFraud/R", reporter="summary")

