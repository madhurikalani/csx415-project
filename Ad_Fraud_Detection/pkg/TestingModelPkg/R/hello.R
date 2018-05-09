# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}

library(testthat)
source("C:/Users/akash/Documents/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/pkg/myfirstpackage/R/model_linear.R")
test_results <- test_dir("C:/Users/akash/Documents/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/pkg/TestingModelPkg/R", reporter="summary")
