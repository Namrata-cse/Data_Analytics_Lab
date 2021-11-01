# 1. Import any dataset of your choice and apply active learning to get the best training-testing
# split or best classification model.

print(summary(iris))

#DIVIDE INTO TRAIN AND TEST
sample <- sample.int(n = nrow(df), size = floor(.75*nrow(df)), replace = F)
train <- df[sample, ]
test  <- df[-sample, ]
install.packages("caTools")
install.packages("ROCR")
install.packages("stats4")
install.packages("splines")
library(caTools)
library(ROCR)
library(stats4) #Load package stats
library(splines) #Load package splines
#To load package VGAM, need to load package stats4 and splines.
install.packages("VGAM")
library(VGAM) #Load package VGAM
#logistic_model <- vglm(train$Species ~ train$Sepal.Length + train$Sepal.Width + train$Petal.Length + train$Petal.Width, 
#data = train, 
#family = "multinomial")
#Perform classification
#logistic_probabilities<- predict(logistic_model, data = test, type="response")
#logistic_predictions <- apply(logistic_probabilities, 1, which.max)
#logistic_predictions
#DECISION TREE MODEL
install.packages("rpart")
library(rpart)
dt_fit <- rpart(train$Species~., data = train, method = 'class')
dt_predict <-list(predict(dt_fit, test, type = 'class'))
dt_predict
#K NEAREST NEIGHBOUS MODEL
library(class)
knn_pred <- knn(train = train, test = test,cl = train$Species, k=10)
commitee <- list("DecisionTree", "knn")
for (p in commitee) {
  print(p)
}
dt_knn <- cbind(data.frame(dt_predict), data.frame(knn_pred))
colnames(dt_knn) <- c("DecisionTree","knn")
dt_knn
#ENTROPY AS A MESAURE OF UNCERTAINTY
install.packages("entropy")
library("entropy")
vote_entropy <- function(x, type='class', entropy_method='ML') {
  it <- do.call(itertools2::izip, x)
  disagreement <- sapply(it, function(obs) {
    entropy(table(unlist(obs)), method=entropy_method)
  })
  disagreement
}
install.packages("itertools2")
library(itertools2)

xy <-vote_entropy(dt_knn)
xy

