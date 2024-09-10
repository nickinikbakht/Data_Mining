data <- read.csv("thyroid.csv", stringsAsFactors = FALSE)
library("VIM")
null2_2 <- function(dataset) {
  dataset[dataset==""]<-NA
  dataset[dataset=="?"]<-NA
  dataset[dataset=="NULL"]<-NA
  return(dataset)
}

b=null2_2(data)
null3_2 <- function(dataset) {
  for( i in seq_along(dataset)){
    dataset[i][is.na(dataset[i])]<-sample(dataset[i][!is.na(dataset[i])],1,replace=TRUE)
  }
  return(dataset)
}

a=null3_2(b)

