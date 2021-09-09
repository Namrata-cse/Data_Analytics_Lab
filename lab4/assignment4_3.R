#3. Take a random sample from the normal distribution, and plot the estimated density function. 
#Now take repeated samples of size 4, calculate the mean for each such sample, and
#plot the density. Repeat the above: taking samples of size 9, and of size 25.

plot(density(rnorm(50)), type = "l")

plot(density(rnorm(4)), type = "l")
norm <- rnorm(4)
norm[1:10]
mean(norm)

plot(density(rnorm(9)), type = "l")
norm <- rnorm(9)
norm[1:10]
mean(norm)

plot(density(rnorm(25)), type = "l")
norm <- rnorm(25)
norm[1:10]
mean(norm)

