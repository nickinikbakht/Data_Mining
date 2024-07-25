data <- read.csv("thyroid.csv", stringsAsFactors = FALSE)
summary(data)
null2_1 <- function(dataset) {
  dataset[dataset==""]<-NA
  dataset[dataset=="?"]<-NA
  dataset[dataset=="NULL"]<-NA
  miss <- colSums(is.na(dataset))
  return(miss)
}
