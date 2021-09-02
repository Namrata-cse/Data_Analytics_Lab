#2. Get the data (PAICOL.csv) and import it with the function read.csv. The dataset comprises
#of the daily levels of a river and the rainfall data from the basin. Replace the value of
#DATE with formatted dates and then display the summary of the data using the function
#summary(). Load ggplot package and visualize the following using ggplot functions:
  

PAICOL.csv...PAICOL.csv <- read.csv("D:/IIITG/third semester/Data Analytics/Lab/PAICOL.csv - PAICOL.csv.csv")
View(PAICOL.csv...PAICOL.csv)

df<-read.csv("D:/IIITG/third semester/Data Analytics/Lab/PAICOL.csv - PAICOL.csv.csv")
View(df)
str(df)

sapply(df, class)
df$DATE <- as.Date(df$DATE)
sapply(df, class)
str(df)
summary(df)
install.packages("ggplot2")
library(ggplot2)
#(a) Create a line plot of the attribute 'LEVEL'.

ggplot(data = df, aes(x = DATE, y = LEVEL)) +
  geom_line() +theme_bw()
#(b) Create a scatter plot of the 'RAIN' against 'LEVEL'.
ggplot(df, aes(x = RAIN ,y = LEVEL)) + geom_line()

#(c) Create a plot of the RAIN and LEVEL.
ggplot(df, aes(y = RAIN ,x = LEVEL))+ geom_point()

ggplot(df, aes(x = DATE, y = LEVEL)) +
  geom_line(aes(color = "LEVEL")) +
  geom_line(aes(x = DATE, y = RAIN, color = "RAIN"))

ggplot(df, aes(x = DATE, y = LEVEL)) +
  geom_point(aes(color = "LEVEL")) +
  geom_point(aes(x = DATE, y = RAIN, color = "RAIN"))
  
#(d) Find and plot circles on the LEVEL plot at the maximum and minimum value.

data_max <- df[which.max(df$LEVEL), ]
data_min <- df[which.min(df$LEVEL), ]

ggplot(df, aes(x = DATE, y = LEVEL)) +
  geom_line() +
  geom_point(aes(x = data_max$DATE, y = data_max$LEVEL), shape = 1, size = 3, color = "red") + 
  geom_point(aes(x = data_min$DATE, y = data_min$LEVEL), shape = 1, size = 3, color = "blue") + 
  scale_shape_discrete(solid = FALSE)
  

# (e) Plot the LEVEL for the year "2001."
df$YEAR = as.numeric(format(df$DATE, "%Y"))
index_2001=df$YEAR==2001

ggplot(df[index_2001,],aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))
 
 