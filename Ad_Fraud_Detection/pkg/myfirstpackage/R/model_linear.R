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
#' @export model


library(caret)
model_form <- function() {
  load("C:/Users/akash/Documents/Madhuri stuff/Data_Science_Intro_R/Ad_Fraud_Detection/temp.Rdata")
  print("Linear: Model Training")
  newlm <- glm(df.train$is_attributed~ app + channel + ip +device +os, data = df.train, family = "binomial")
  BIC <- BIC(newlm)
  print("Returning the Model Object for Fitting")
  return(list(BIC = BIC,lm = newlm))
}


param_linear <- function() {
  print("Calling Model Building Function")
  res <- model_form()
  return(res)
}

model<- param_linear()
saveRDS(model, "model_linear.rds")





#res1 <- build_results(x, model, data, lag, train)
#return(res1)

#build_results <- function(x, model, data,train) {
 # res1 <- model
  #res1$method <- 'glm'
  #res1$periods <- periods
  #res1$x <- df.train$is_attributed
  #res1$lag <- lag
  #res1$train <- df$train
  #class(res1) <- 'model'
  #return(res1)
#}
