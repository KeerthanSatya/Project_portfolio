#data cleaning
library(ggplot2)
ggplot(data = Carseats , mapping = aes(x= Price ,y = Sales)) + geom_point(size=1)

#lebels : labs(x = "Price" , y = "Sale points")+ ggtitle("Random Plot")

ggplot(Carseats, aes(Sales)) + 
  geom_histogram(fill = "red", color = "yellow", binwidth = 0.3)+
  ylim(c(0,30))

#apply , sapply ,lapply

# is.factor(US) tells if US is categorical or not

sapply(Carseats, is.factor)
FVar <- Carseats %>% sapply(is.factor)
Carseats[, FVar]

NVar <- Carseats %<% sapply(is.numeric)
Carseats[,NVar]

#outliers can be detected from 1.5 IQR rule. Boxplot automatically returns the outliers.

