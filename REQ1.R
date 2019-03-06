library(arsenal)
#1----------------------------------------
#clean environment 
rm(list=ls())

#display work items
ls()
#set working directory
setwd("F:\\cmp\\last_term_isa\\BigData\\labs\\Lab 1 - Introduction to R\\Lab 1 - Introduction to R\\Requirement")

#2--------------------------------------------------
mydata = read.csv("titanic.csv")  # read csv file 

#3-------------------------------------------------------
dim(mydata) #Show the dimensions of the data frame.
str(mydata) #Show the structure of the data frame.
head(mydata,10) #The first 10 row.
tail(mydata,10) #The last 10 rows.
summary(mydata)  #summary of all variables in the data frame

#4----------------------------------------------------------
summary(mydata['Age']) # Summary for the variable age only.
summary(mydata['Age'])[2] # First quartile
summary(mydata['Age'])[5] # Third quartile
is.na(mydata$Age)
sapply(mydata$Embarked, typeof) #Type of embarked variable
levels(mydata$Embarked)

#5----------------------------------------------------------
mydata <- na.omit(mydata,cols="Age") #Remove the rows containing <NA> in the age variable 
mydata <- mydata[!(mydata$Embarked == ""),] #Remove unexpected from embarked
#mydata <- na.omit(mydata,cols="Embarked")
levels(mydata$Embarked)

is.na(mydata$Age) #check no NA exist
mydata <- subset(mydata, select = -c(Cabin, Ticket))

