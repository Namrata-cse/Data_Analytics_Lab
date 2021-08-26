#a.reading the dataset
Dataset <- read.csv("~/R/lab2/Dataset.csv")
View(Dataset)

# b.Handling the missing data  
is.na(Dataset)
# In Salary Column
d1 <- Dataset
d1$Salary[is.na(d1$Salary)] <-mean(d1$Salary, na.rm = TRUE)
View(d1)
#In Age column
d1$Age[is.na(d1$Age)] <-mean(d1$Age, na.rm = TRUE)
View(d1)

#c.Encode categorical data. Encode "France", "Spain" and "Germany" with 1, 2, 3
#values.

d1$Country=factor(d1$Country,levels=c('France','Spain','Germany'),
                  labels =c(1,2,3))
View(d1)

#Also encode the target variable with 0 and 1 i.e. Encode Yes with 0 and No
#with 1. factor function or if-else statement can be used to convert the categorical
#features into numeric features.

d1$Purchased =factor(d1$Purchased, levels=c('Yes','No'),
                     labels =c(0,1))
View(d1)

#d.Scale the dataset using any of the scaling technique. Use scale function to scale the
#values.

d2<-d1

d2$Country<-as.numeric(as.factor(d2$Country))
d2$Purchased<-as.numeric(as.factor(d2$Purchased))
#standard deviation
d2<-scale(d2 ,center=TRUE, scale=TRUE)
#RMSE
d3<-d1
d3$Country<-as.numeric(as.factor(d3$Country))
d3$Purchased<-as.numeric(as.factor(d3$Purchased))
d3<-scale(d3 ,center=FALSE, scale=TRUE)
View(d3)

