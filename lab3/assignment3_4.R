#4. Creating a sample of 100 numbers which are incremented by 1.5. Create the binomial
#distribution and plot it using dotchart.

x <- seq(0,100,by = 1)  
y <- dbinom(x,50,0.5)

install.packages("ggplot2")
library(ggplot2)

dotchart(x,y, col="red")
dotchart(x)
