#Descriptive Statistics and Correlation Matrix Script
#desstat() function
desstat<-function(x){
tt<-as.matrix(x)
tsum<-as.matrix(summary(tt))
s<-sd(x)
s<-format(round(s, 2), nsmall = 2)
jj<-paste("std.dev :",s)
tsum[7]=jj
tsum
}


library(MASS)
MyData<- read.csv(file="c:/RExercises/Descriptive Statistics/iris.csv", header=TRUE, sep=",")
data<-as.matrix(MyData[,2:5])
foreach(i=1:4) %do% {
desstat(data[,i])
}

