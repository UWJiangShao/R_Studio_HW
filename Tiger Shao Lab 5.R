setwd("C:\\Users\\Jiang Shao\\Desktop\\Bees")
data = read.csv("manaus.csv")

#1.	Using the methods we have already gone over in 
#previous labs, calculate the mean, variance, and standard 
#deviation of the height data.  Also, make a histogram of the data
mean(data$Stage.Height)
var(data$Stage.Height)
sd(data$Stage.Height)
hist(data$Stage.Height, xlab = "Stage if Height", ylab = "Fr", main = "Stage Height from 1903 to 1992")

#2.	Now calculate the z-scores for the flow 
#data and save as a new object called ¡°zscores¡±.

z.score <- (data$Stage.Height - mean(data$Stage.Height))/sd(data$Stage.Height)
head(z.score)

#3
prob <- pnorm(z.score, 0, 1, lower.tail = T)
head(prob)

#4
plot(data$Stage.Height, prob,  pch = 20, xlab = "river stage height", ylab = "cumulative prob")

#5
head(pnorm(data$Stage.Height, mean(data$Stage.Height)))
head(prob)

#6
probs <- seq(0.01, 0.99, by = 0.01)
quality <- qnorm(probs, mean(data$Stage.Height), sd(data$Stage.Height))
plot(x = probs, y = quality, xlab = "Prob", ylab = "River stage height",  main = "Quantile Function of stage height")

#7
qqnorm(data$Stage.Height, pch = 20)
qqline(data$Stage.Height)
