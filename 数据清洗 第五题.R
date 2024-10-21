shop <- read.csv('D:\\archive\\Shopping_CustomerData.csv',header = T)
apply(shop,2,function(x) table(is.na(x)))
table(shop$CustomerCity)
y <- quantile(shop$AnnualIncome, c(.25,.5,.75))
shop$grade <- "A"
shop$grade[shop$AnnualIncome > y[1] & shop$AnnualIncome <= y[2]] <- "B"
shop$grade[shop$AnnualIncome > y[2] & shop$AnnualIncome <= y[3]] <- "C"
shop$grade[shop$AnnualIncome >= y[3]] <- "D"
table(shop$grade)
names(shop)
aggregate(shop$CustomerAge, by = list(shop$grade), FUN ='mean') 
aggregate(shop$CreditScore, by = list(shop$grade), FUN ='mean') 
aggregate(shop$SpendingScore, by = list(shop$grade), FUN ='mean') 
with(shop,table(CustomerAge))
