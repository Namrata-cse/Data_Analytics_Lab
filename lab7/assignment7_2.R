#2. Continue the same with minimum support of 20% and the minimum confidence of 50%.
library(arules)
library(arulesViz)


rules <- apriori(Groceries, parameter = list(support =
                                                     0.002, confidence = 0.5))

inspect(rules[1:10])

itemFrequencyPlot(Groceries,topN=20,type="absolute")

