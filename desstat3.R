#Descriptive Statistics
library(psych)
MyData<-read.csv(file.choose())
data<-as.matrix(MyData[,2:5])
describe(data)
