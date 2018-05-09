
#' @title Random Forest Model To Find Out Whether A User Downloads The App Or Not
#'
#' @description This package builds a Random Forest model to find out whether the user downloaded the app or not based on training the model with training dataset.
#'
#' @param NULL
#'
#' @return model_rf
#'
#' @examples  model_rf()
#'
#' @export model_rf

library(caret)

library (randomForest)
model_rf <- function() {
  load("C:/Users/akash/Documents/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/temp.Rdata")
  print("Random Forest: Model Training ")
    model_fit_rf <- randomForest(is_attributed ~ app + channel + ip +device, data = df.train, ntree=100, importance = TRUE)
    print("last step")
   return(model_fit_rf)
  }
saveRDS(model_rf, "model_rf.rds")


