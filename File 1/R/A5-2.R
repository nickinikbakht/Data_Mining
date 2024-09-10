data1 <- read.csv("thyroid.csv", stringsAsFactors = FALSE)
library("VIM")
null2_2 <- function(dataset) {
  dataset[dataset==""]<-NA
  dataset[dataset=="?"]<-NA
  dataset[dataset=="NULL"]<-NA
  return(dataset)
}
data=null2_2(data1)
zsc <-function(dataset){
  z<-(dataset-mean(dataset,na.rm =T))/sd(dataset,na.rm=T)
  return(z)                             
}
MM <- function(dataset){
  mm=((dataset-min(dataset,na.rm = TRUE))/((max(dataset,na.rm = TRUE)-min(dataset,na.rm = TRUE))))
  return(mm)
}

par(mfrow=c(2,6))
hist(data$T3_resin,col = "lightblue")
hist(as.numeric(data$Serum_thyroxin),col = "lightblue")
hist(as.numeric(data$Serum_triiodothyronine),col = "lightblue")
hist(as.numeric(data$Basal_TSH),col = "lightblue")
hist(as.numeric(data$Abs_diff_TSH),col = "lightblue")
hist(data$Outcome,col = "lightblue")
hist(zsc(data$T3_resin),col = "darkblue")
hist(zsc(as.numeric(data$Serum_thyroxin)),col = "darkblue")
hist(zsc(as.numeric(data$Serum_triiodothyronine)),col = "darkblue")
hist(zsc(as.numeric((data$Basal_TSH))),col = "darkblue")
hist(zsc(as.numeric((data$Abs_diff_TSH))),col = "darkblue")
hist(zsc(as.numeric(data$Outcome)),col = "darkblue")

par(mfrow=c(2,6))
hist(data$T3_resin,col = "lightblue")
hist(as.numeric(data$Serum_thyroxin),col = "lightblue")
hist(as.numeric(data$Serum_triiodothyronine),col = "lightblue")
hist(as.numeric(data$Basal_TSH),col = "lightblue")
hist(as.numeric(data$Abs_diff_TSH),col = "lightblue")
hist(data$Outcome,col = "lightblue")
hist(MM(data$T3_resin),col = "darkblue")
hist(MM(as.numeric(data$Serum_thyroxin)),col = "darkblue")
hist(MM(as.numeric(data$Serum_triiodothyronine)),col = "darkblue")
hist(MM(as.numeric((data$Basal_TSH))),col = "darkblue")
hist(MM(as.numeric((data$Abs_diff_TSH))),col = "darkblue")
hist(MM(as.numeric(data$Outcome)),col = "darkblue")
