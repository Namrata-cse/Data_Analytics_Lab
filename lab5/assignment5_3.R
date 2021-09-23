#3. Compute Manhattan distance and cosine similarity after performing (a),(b),(c) steps of
#Q.2.
install.packages("lsa")
library(lsa)
P <- 1:10/sum(1:10)
Q <- 20:29/sum(20:29)
x <- rbind(P,Q)
cosine(x)

stats::dist(x, method = "manhattan")
