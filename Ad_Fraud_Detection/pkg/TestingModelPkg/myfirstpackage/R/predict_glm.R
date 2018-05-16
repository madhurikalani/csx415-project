#' @title Linear Classification Model To Find Out Whether A User Downloads The App Or Not
#'
#' @description This package builds a linear classification model to find out whether the user downloaded the app or not based on training the model with training dataset.
#'
#' @param NULL
#'
#' @return model
#'
#' @examples  param_linear()
#'
#' @export predict_glm

library(caret)
predict_glm <- function() {
  setwd("C:/Users/akash/Documents/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/pkg/myfirstpackage")
  
  print("Linear: Model Training")
  model_logistic <- readRDS("model_glm.RDS")
  summary(model_logistic)
  predict <- predict(model_logistic,df.test,type="response")
  predict<-ifelse(predict > 0.5,1,0)
    print("Actual vs Predicted")
    return(table(df.test$is_attributed,predict))
  
}
