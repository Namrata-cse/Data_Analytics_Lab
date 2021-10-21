#Import any database of transactions of your choice (Groceries' dataset may be preferred.
#It is predefined in R package)
groceries...groceries <- read.csv("~/R/lab7/groceries - groceries.csv", header=FALSE)
View(groceries...groceries)
Groceries<-groceries...groceries
View(Groceries)

#(a) Load required R libraries : arules and arulesViz
install.packages("arules")
library(arules)

install.packages("arulesViz")
library(arulesViz)

#(b) Apply apriori algorithm and mine the frequent itemsets and association rules. Use
#the default values of minimum support and minimum confidence.


rules <- apriori(Groceries, parameter = list(supp = 0.001, conf = 0.8))

# Show the top 5 rules, but only 2 digits
options(digits=2)
inspect(rules[1:5])

#(c) Displays the first 10 strong association rules.

inspect(rules[1:10])



#(d) Plot the 20 items with highest item frequency.
itemFrequencyPlot(Groceries,topN=20,type="absolute")

