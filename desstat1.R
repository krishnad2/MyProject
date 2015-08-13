library(MASS)
library(foreach)
MyData <- read.csv(file="c:/RExercises/Descriptive Statistics/iris.csv", header=TRUE, sep=",")
data<-as.matrix(MyData[,2:5])
s<-c("Stdev. :  ")
x<-foreach(i=1:4,) %do% {
 c(rep(s,4),sd(data[,i]))
} 
y<-foreach(i=1:4) %do% {
summary(data[,i])
}
x
y

