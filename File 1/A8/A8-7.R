8-5
data1 <- read.csv("housing.csv", stringsAsFactors = FALSE,header=FALSE)
panel.cor<-function(x,y){
  usr <-par("usr");on.exit(par(usr))
  par(usr=c(0,1,0,1))
  r<- round(cor(x,y),digits=2)
  txt<-paste0("R =",r)
  cex.cor<- 0.8/strwidth(txt)
  text(0.5,0.5,txt,cex=cex.cor*r)}
upper.panel<-function(x,y){
  points(x,y,pch=19,col=c)
}
pairs(data1[,c(3,4,9)],
      lower.panel = panel.cor,
      upper.panel=upper.panel)
data1 <- read.csv("housing.csv", stringsAsFactors =  = FALSE,header=FALSE)
ddd<-c("#65ff44","#543aa2","#437810")
pairs(data1[,c(3,4,9)],pch=19,col=ddd)


8-6
panel.cor <- function(x, y){
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r <- round(cor(x, y), digits=2)
  txt <- paste0("R = ", r)
  cex.cor <- 0.8/strwidth(txt)
  text(0.5, 0.5, txt, cex = cex.cor * r)
}
# Customize upper panel
upper.panel<-function(x, y){
  points(x,y, pch = 19, col = my_cols)
}
# Create the plots
pairs(data1[,c(3,4,9)], 
      lower.panel = panel.cor,
      upper.panel = upper.panel)

8-7
data2<-data.matrix(data1, rownames.force = NA)
data3<-as.matrix(sapply(data1, as.numeric))  

heatmap(data3, scale = "none")
