#' @title Linear Classification Model To Find Out Whether A User Downloads The App Or Not
#'
#' @description This package builds a linear classification model to find out whether the user downloaded the app or not based on training the model with training dataset.
#'
#' @param NULL
#'
#' @return model
#'
#' @examples  predict_glm()
#'
#' @export predict_glm

library(caret)
library(data.table)
library(lubridate)
predict_glm <- function() {
  invisible(gc())
  setwd("C:/Users/akash/Documents/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/pkg/myfirstpackage")
  test <- fread("C:/Users/akash/Documents/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/test.csv", skip = 900000, nrows = 148576,
                 col.names =c("click_id","ip", "app", "device", "os", "channel", "click_time"),
                 showProgress = FALSE)
  test$is_attributed <- 0
  test$click_time <- as_datetime(test$click_time)
  invisible(gc())
  print("Linear: Model Training")
  model_logistic <- readRDS("model_glm.RDS")
  summary(model_logistic)
  predict <- predict(model_logistic,test,type="response")
  #predict<-ifelse(predict > 0.5,1,0)
  predict = as.data.frame(predict)
  sub <- data.table(click_id = test$click_id, is_attributed = NA)
  sub$is_attributed = predict
  t <-getwd()
  print(t)
  fwrite(sub, "sub_glm.csv")

  print("done")
  invisible(gc())
    print("Actual vs Predicted")
    #return(table(test$is_attributed,predict))

}

