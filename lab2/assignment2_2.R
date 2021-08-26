#(a) Get the dataset from UCI ML Repository: https://archive.ics.uci.edu/ml/datasets/iris.

Dataset <- read.csv("D:/IIITG/second semester/MACHINE LEARNING LAB/iris.csv")
View(Dataset)
#(b) Find the mean of all the metrics (Sepal.Length Sepal.Width Petal.Length Petal.Width)
colMeans(Dataset[sapply(Dataset, is.numeric)])


#(c) Compute the sum of all the metrics across species and group by species.
colSums(Dataset[sapply(Dataset, is.numeric)])

#(d) Compute the count of all the metrics across species and group by species.
countval <- aggregate(x=Dataset, by=list(Dataset$Species),
                                         function(x) length(x))
countval


#(e) Compute the maximum of all the metrics across species and group by species.
maxvalues <-aggregate(x=Dataset, by=list(Dataset$Species),max)
maxvalues
