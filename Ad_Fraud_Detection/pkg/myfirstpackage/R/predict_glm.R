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
  readRDS(model_glm, refhook = NULL)
  print("Linear: Model Training")
  model_logistic <- model_glm
  predict_glm <- predict(model_logistic,df.test)
  table(df.test$is_attributed,predict_glm)
  print("Actual vs Predicted")
  
}