dim(Carseats)
View(Carseats)
names(Carseats)


str(Carseats)

Carseats$Sales
min(Carseats$Sales)
max(Carseats$Sales)

attach(Carseats) #if we dont attach we should give name of the dataset every time
mean(Sales)
sd(Sales)

#head returns six rows
head(Sales)
head(Sales, n = 20)

#data[rows,cols] these can be numbers or alphabets or words

Sales[1:5]
Carseats[1:5 ,"Sales"]
Carseats[1:5 , 1] #same as above as 1 is sales column
Carseats[1:5, 1:5] #return first five rows and cols
Carseats[ , 1] #includes all the rows

Carseats[Sales < 4 , ] #sales < 4
Carseats[ShelveLoc == "Good" , ] # all shelveloc good instances
Carseats[ShelveLoc == "Good" | ShelveLoc == "Bad" , ] #both good and bad

#filter
install.packages("dplyr")
library(dplyr)
filter(Carseats, Sales<4)

#arrange : ordering instances

Carseats %>% arrange(Price)
Carseats %>% select(Price) %>% arrange(desc(Price))

                                       