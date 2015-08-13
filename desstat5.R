#desstat5.R
library(foreach)
library(MASS)
MyData<- read.csv(file="c:/RExercises/Descriptive Statistics/iris.csv", header=TRUE, sep=",")
source("c:/RExercises/Descriptive Statistics/dstat.R")
data<-as.matrix(MyData[,2:5])
foreach(i=1:4) %do% {
desstat(data[,i])
}

