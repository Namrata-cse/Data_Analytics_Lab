#2. Perform the following:
#(a) Define a normalized vector P.
P <- 1:10/sum(1:10)
#(b) Define a normalized vector Q.
Q <- 20:29/sum(20:29)
#(c) Combine P and Q as matrix object. Please note that when defining a matrix from
#vectors, the vectors should be combined as rows.

x <- rbind(P,Q)
#(d) Compute the Euclidean Distance with default parameters
install.packages("philentropy")
library(philentropy)
distance(x, method = "euclidean")
