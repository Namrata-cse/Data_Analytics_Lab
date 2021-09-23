#1. Perform the following tasks:

#(a) Import mtcars dataset.
mtcars <- read.csv("~/R/lab5/mtcars.csv")
View(mtcars)
#(b) Visualize your data using scatter plots

head(mtcars)
names(mtcars)
summary(mtcars)

install.packages("car")
library("car")
scatterplot(wt ~ mpg, data = mtcars)
#(c) Compute the Correlation between mpg and wt variables.
data(mtcars)
sort(cor(mtcars)[1,])

cortest <- cor.test(mtcars$mpg, as.numeric(mtcars$wt))
cortest$p.value; cortest$conf.int
