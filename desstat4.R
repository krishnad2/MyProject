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
MyData1<- read.csv(file="c:/RExercises/Descriptive Statistics/iris.csv", header=TRUE, sep=",")
MyData <- subset(MyData1, SPECIE == 1,
select=SPECIE:PW) 
var<-MyData$SL
print("Descriptive Statistics for the Specie  : 1")
data<-as.matrix(MyData[,2:5])
foreach(i=1:4) %do% {
desstat(data[,i])
}
MyData <- subset(MyData1, SPECIE == 2,
select=SPECIE:PW) 
var<-MyData$SL
print("Descriptive Statistics for the Specie : 2")
data<-as.matrix(MyData[,2:5])
foreach(i=1:4) %do% {
desstat(data[,i])
}
MyData <- subset(MyData1, SPECIE == 3,
select=SPECIE:PW) 
var<-MyData$SL
print("Descriptive Statistics for the Specie : 3")
data<-as.matrix(MyData[,2:5])
foreach(i=1:4) %do% {
desstat(data[,i])
}





