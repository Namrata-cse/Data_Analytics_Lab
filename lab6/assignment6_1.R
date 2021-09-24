
#1. Download any two datasets of your choice, read it and perform the following tasks
#(a) Visualise the data.

#(b) Perform K-Means Clustering selecting the best value of k and taking Euclidean distance as similarity measure. Check your algorithm with the following three conditions , visulaise the clusters and note the difference

#i. Maximum number of iterations
#ii. Cluster centroid remains unchanged
#iii. Highest quality of cluster is reached.

#(c) Repeat the Q.2 taking Manhattan distance as similarity measure and note the differ-ence between the clusters as compared to that found in Q. 2.

#loading the required packages

library(tidyverse)  # data manipulation
library(cluster)    # clustering algorithms
library(factoextra) # clustering algorithms & visualization
# loading the dataset
df <- USArrests
#To remove missing values:
df <- na.omit(df)
#scaling and standardizing
df <- scale(df)
head(df)

#Clustering distance measures:
distance <- get_dist(df, method="euclidean")
distance <- get_dist(df, method="manhattan")
fviz_dist(distance, gradient = list(low = "#00AFBB", mid = "white", high = "#FC4E07"))

# computing K means clustering
k2 <- kmeans(df, centers = 2, nstart = 25)
str(k2)
k2

fviz_cluster(k2, data = df)

# comparing for different number of clusters

k3 <- kmeans(df, centers = 3, nstart = 25)
k4 <- kmeans(df, centers = 4, nstart = 25)
k5 <- kmeans(df, centers = 5, nstart = 25)

# plots to compare
p1 <- fviz_cluster(k2, geom = "point", data = df) + ggtitle("k = 2")
p2 <- fviz_cluster(k3, geom = "point",  data = df) + ggtitle("k = 3")
p3 <- fviz_cluster(k4, geom = "point",  data = df) + ggtitle("k = 4")
p4 <- fviz_cluster(k5, geom = "point",  data = df) + ggtitle("k = 5")

library(gridExtra)
grid.arrange(p1, p2, p3, p4, nrow = 2)

#Determining Optimal Clusters( elbow method)
set.seed(123)

# function to compute total within-cluster sum of square 
wss <- function(k) {
  kmeans(df, k, nstart = 10 )$tot.withinss
}

# Compute and plot wss for k = 1 to k = 15
k.values <- 1:15

# extract wss for 2-15 clusters
wss_values <- map_dbl(k.values, wss)

plot(k.values, wss_values,
     type="b", pch = 19, frame = FALSE, 
     xlab="Number of clusters K",
     ylab="Total within-clusters sum of squares")
set.seed(123)

fviz_nbclust(df, kmeans, method = "wss")

# extracting and visualizing the clusters:
# Compute k-means clustering with k = 4
set.seed(123)
final <- kmeans(df, 4, nstart = 25)
print(final)
fviz_cluster(final, data = df)
