data1 <- read.csv("thyroid.csv", stringsAsFactors = FALSE)
library("VIM")
null2_2 <- function(dataset) {
  dataset[dataset==""]<-NA
  dataset[dataset=="?"]<-NA
  dataset[dataset=="NULL"]<-NA
  return(dataset)
}
data=null2_2(data1)
out<- function(n){
  q1= quantile(data$T3_resin,0.25,na.rm=T)
  q3= quantile(data$T3_resin,0.75,na.rm=T)
  iqr=q3-q1
  upper_=(q3+(1.5*iqr))
  lower_=(q3-(1.5*iqr))
  c(n[n<lower_],n[n>upper_])
}
par(mfrow=c(1,1))
out(data$T3_resin)
boxplot(data$T3_resin,data=data)