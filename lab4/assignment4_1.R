#1. Perform the following tasks:
#(a) In R a simple bar graph can be used to model the probability distribution function.
#Take a random vector and probability associated with it and plot it with a bar graph.
sample(1:6, 1) 
# generate the vector of probabilities 
probability <- rep(1/6, 6) 
# plot the probabilities 
barplot(probability,
     xlab = "outcomes",main = "Probability Distribution") 

X<-c(0,1,2,3)
Prob<-c(0.208,0.167,0.25,0.375)
N<-c ("A", "C", "G", "U")
barplot(Prob,names=N,ylab="Probability", main="RNA Residue Analysis")

#(b) For the above problem create a cumulative frequency table and plot the cumulative
#frequency against each sample point mentioned in the vector.

# generate the vector of cumulative probabilities 
cum_probability <- cumsum(probability) 

# plot the probabilities 
barplot(cum_probability, xlab = "outcomes", main = "Cumulative Probability Distribution") 

CumProb<-c(0.208, 0.375, 0.625, 1)
plot(X,CumProb,xlim=range(0,1,2,3,4), main="RNA Residue Analysis CDF",
       xlab="X=", type="S")
#(c) Using some simple commands in R generate the probability values for the binomial
#distribution for the number of children in 10 with blue eyes using p =0.16. Plot the
#obtained result.

x<-0:10
y<-dbinom(0:10,10,0.16)
data.frame("Prob"=y,row.names=x) 
plot(0:10,dbinom(0:10,10,0.16),type='h',xlab="",ylab="Probability",
     sub="Number of kids with blue eyes")
#(d) Run the above example with probabilities that a child has blue eyes is 0.05, 0.2, 0.5,
#and 0.8 and see how this changes the distribution.

par(mfrow=c(1,1))
plot(0:10,dbinom(0:10,10,0.05),type='h',xlab="",ylab="Prob", sub="p=0.05")
plot(0:10,dbinom(0:10,10,0.2),type='h',xlab="",ylab="Prob", sub="p=0.2")
plot(0:10,dbinom(0:10,10,0.5),type='h',xlab="",ylab="Prob", sub="p=0.5")
plot(0:10,dbinom(0:10,10,0.8),type='h',xlab="",ylab="Prob", sub="p=0.8")
#(e) Consider you have a vector 0:10. Compute poisson distribution with p=0.2. Plot it
#to visualise the distribution.

x<-0:10
y<-dpois(0:10,0.2)
data.frame("Prob"=y,row.names=x)
plot(0:10, dpois(0:10,0.2), type='h', xlab="Sequence Errors",
     ylab="Probability" )

