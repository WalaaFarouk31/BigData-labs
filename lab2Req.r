
#clean environment 
rm(list=ls())
setwd("F:\\cmp\\last_term_isa\\BigData\\labs\\Lab 2 - R Graphics")
#1
Economist<-read.csv("datasets\\EconomistData.csv")
head(Economist[2:5])
#hist(Economist$CPI)
library(ggplot2)
#ggplot(Economist, aes(x = CPI),bins=30) +geom_histogram()
#2
p1<-ggplot(Economist, 
       aes(y = HDI.Rank, x = CPI)) 
#3
p1 + geom_point(color = 'blue') 
#4
p1 + geom_point(aes(color = Region)) 
#5
p1 + geom_point(aes(color = Region)) +  geom_smooth()
#6
p1 +geom_text(aes(label=Country), size = 6) 

#7
p1+ geom_point(size = 2) 

#8
p1 + geom_point(aes(size = HDI.Rank)) 

#9--------------------------------------------
MdlEast=subset(Economist,Region=='MENA')
p2<-ggplot(MdlEast, 
           aes(y = HDI.Rank, x = CPI))  #2
p2 + geom_point(aes(color = Region)) #4
p2 + geom_point(aes(color = Region)) +  geom_smooth() #5
p2 +   geom_text(aes(label=Country))  #6
p2 + geom_point(aes(size = HDI.Rank)) #8

#10---------------------------------------------------
ERP=subset(Economist,Region=='EU W. Europe') 
p3<-ggplot(ERP, 
           aes(y = HDI.Rank, x = CPI)) #2
p3 + geom_point(aes(color = Region)) #4
p3 + geom_point(aes(color = Region)) +  geom_smooth()  #5
p3 +   geom_text(aes(label=Country))  #6
p3 + geom_point(aes(size = HDI.Rank)) #8

#11-----------------------------------------------------

ERPE=subset(Economist,Region=='EU W. Europe' | Country =='Egypt')
p4<-ggplot(ERPE, 
           aes(y = HDI.Rank, x = CPI))
p4+ geom_text(aes(label=Country))
