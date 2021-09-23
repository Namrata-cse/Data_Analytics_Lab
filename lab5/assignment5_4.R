#4.(a) Import the Iris dataset (https://archive.ics.uci.edu/ml/datasets/iris).
library(datasets)
str(iris)

summary(iris)
#(b) As you may know, this dataset contains three kinds of flowers: Iris-Setosa, Iris-
#Versicolor, and Iris-Virginica, having the following four features: sepal length, sepal
#width, petal length, petal width. choose only two features: petal length, petal width,
#and plot the data points in a 2-D space where the x-axis and the y-axis represent the
#petal length and the petal width, respectively.
library(ggplot2)

g <- ggplot(data=iris, aes(x = Petal.Length, y = Petal.Width))
print(g)
g <-g + 
  geom_point(aes(color=Species, shape=Species)) +
  xlab("Petal Length") +
  ylab("Petal Width") +
  ggtitle("Petal Length-Width")+
  geom_smooth(method="lm")
print(g)


#(c) Compute the similarity measure between Iris-Setosa and Iris-Versicolor; and Iris-
#Versicolor and Iris-Virginica; and Iris-Setosa and Iris-Virginica considering only two
#features petal length and petal width

corr <- cor(iris[,1:4])
round(corr,3)
pairs(iris[,1:4])

library(MASS)
parcoord(iris[,1:4], col=iris[,5],var.label=TRUE,oma=c(4,4,6,12))
par(xpd=TRUE)
legend(0.85,0.6, as.vector(unique(iris$Species)),fill=c(1,2,3))

