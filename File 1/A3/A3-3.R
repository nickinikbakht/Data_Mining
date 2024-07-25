data <- read.csv("thyroid.csv", stringsAsFactors = FALSE)
library("VIM")
null2_2 <- function(dataset) {
  dataset[dataset==""]<-NA
  dataset[dataset=="?"]<-NA
  dataset[dataset=="NULL"]<-NA
  return(dataset)
}

mode_T<-function(colomn_){
  m=names(which.max(table(colomn_)))
  if (is.numeric(colomn_))
    return(as.numeric((m)))
  return (m)
}
b=null2_2(data)
null3_3 <- function(dataset) {
  for( i in seq_along(dataset)){
    dataset[i][is.na(dataset[i])]<-mode_T(dataset[i])
  }
  return(dataset)
}

a=null3_3(b)