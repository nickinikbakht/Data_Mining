data1 <- read.csv("diabetes.csv", stringsAsFactors = FALSE)
observed<-table(data1$Glucose,data1$Outcome)
observed
chisq.test(observed)