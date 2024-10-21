rm(list=ls())
setwd('d:/')

fruit <- read.table(header = T,sep=',',text = '日期,水果,价格(元/kg),销量
2020-01-01,苹果,5.6,120
2020-01-01,橙子,4.8,NA
2020-01-02,香蕉,3.2,150
2020-01-02,橙子,4.5,80
2020-01-03,苹果,5.6,110
2020-01-03,香蕉,3.2,160
2020-01-04,橙子,NA,100
2020-01-05,苹果,5.7,130
2020-01-05,香蕉,3.3,140
2020-01-06,橙子,4.4,95')
apply(fruit,2,function(x) table(is.na(x)))
fruit$价格.元.kg.[is.na(fruit$价格.元.kg.)] <- mean(fruit$价格.元.kg.,na.rm = T)
names(fruit1)
fruit1 <- na.omit(fruit)
with(fruit1, aggregate(销量 ~ 价格.元.kg.,fruit1,FUN ='sum'))
aggregate(fruit1$销量, by = list(fruit1$价格.元.kg), FUN ='sum')
aggregate(fruit1$销量, by = list(fruit1$日期), FUN ='sum') 
fruit[order(fruit$日期), ]