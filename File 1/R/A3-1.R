library("VIM")
data <- read.csv("thyroid.csv", stringsAsFactors = FALSE)
null2_2 <- function(dataset) {
  dataset[dataset==""]<-NA
  dataset[dataset=="?"]<-NA
  dataset[dataset=="NULL"]<-NA
  return(dataset)
}
a=null2_2(data)

null3_1 <- function(dataset) {
  dataset[is.na(dataset)]<-"miss"
  return(dataset)
}
b=null3_1(a)
par(mfrow=c(4,3))
barMiss((b$T3_resin),xlab = "T3_resin_after")
barMiss((b$Serum_thyroxin),xlab ="Serum_thyroxin_after")
barMiss((b$Serum_triiodothyronine),xlab ="Serum_triiodothyronine_after")
barMiss((b$Basal_TSH),xlab ="Basal_TSH_after")
barMiss((b$Abs_diff_TSH),xlab ="Abs_diff_TSH_after")
barMiss((b$Outcome),xlab ="Outcome_after")
barMiss((data$T3_resin),xlab = "T3_resin_befor")
barMiss((data$Serum_thyroxin),xlab ="Serum_thyroxin_befor")
barMiss((data$Serum_triiodothyronine),xlab ="Serum_triiodothyronine_before")
barMiss((data$Basal_TSH),xlab ="Basal_TSH_befor")
barMiss((data$Abs_diff_TSH),xlab ="Abs_diff_TSH_after_befor")
barMiss((data$Outcome),xlab ="Outcome_after_befor")
