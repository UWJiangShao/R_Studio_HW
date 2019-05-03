#a.	What sort of discrete distribution do these data follow?

#b.	Read the data into R. Calculate the mean and variance of the data.
nest <- c(3, 8, 5, 2, 2, 4, 2, 4, 3, 3, 2, 3, 4, 1, 2, 4, 5, 0, 3, 3)
mean(nest)
var(nest)

#c.	Based on the mean you calculated in part b, what is the 
#probability of successfully seeing a nest in a given tree?

mean(nest) / 10

#d.	What is the probability of seeing nests in exactly 4 trees? 
#(Use both the formula for a binomial probability and the R command dbinom() to calculate the probability.)
prob_exact_4 <- dbinom(4, size = 10, prob = 0.315)
prob_exact_4

#e.	To protect the bird, you want to preserve sites that have 5 or more 
#trees with nests in them. What is the probability of a site having 5 or more trees with nests?
prob_more_5 <- 1 - pbinom(4, size = 10, prob = 0.315)
prob_more_5

#f.	If you sample 15 trees at a new site, calculate the expected mean, variance, and standard 
#deviation of the number of trees with nests at that site.
mean_np <- 15 * mean(nest) /10
mean_np
var_np <- mean_np * (1-mean(nest)/10)
var_np
sd <- sqrt(3.236625)
sd



#Are the mean and variance what you would expect, given your answer to part a?
bears <- c(5, 13, 8, 3, 3, 7, 4, 6, 4, 5, 4, 4, 6, 2, 3, 7, 7, 1, 5, 5, 4, 8, 7, 3, 4, 9, 7, 6, 6, 5)
cougars <- c(5, 5, 3, 2, 2, 1, 0, 3, 2, 3, 1, 1, 8, 4, 1, 4, 1, 7, 4, 5, 4, 2, 1, 3, 2, 2, 2, 2, 5, 1)
mean(bears)
mean(cougars)
var(bears)
var(cougars)

#Based on the means you calculated in part b, what is the probability of seeing 3 bears in a given forest?
(exp(-5.366667) * (5.366667)^3) / factorial(3)
dpois(3, mean(bears))

#What is the probability of seeing 2 cougars in a forest?
(exp(-2.866667) * (2.866667^2)) / factorial(2)
dpois(2, mean(cougars))

#What is the probability of seeing 3 bears or 2 cougars in a forest?
dpois(3, mean(bears)) + dpois(2, mean(cougars))



