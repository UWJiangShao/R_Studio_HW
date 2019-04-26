setwd("C:\\Users\\Jiang Shao\\Desktop\\Bees")
birddata = read.csv("Lab4_SkillsData.csv")
head(birddata)
mean(birddata$Total.Birds)
(4.625^6) * exp(-4.625) / factorial(6)
dpois(6, 4.625)


#2
p <- sum(birddata$Black.capped.chickadee > 0) / 24
n <- 8
n*p

#variance
n*p*(1-p)
sqrt(n*p*(1-p))


choose(8, 7)*(0.75 ^ 7)*((1 - 0.75)^(8-7))
dbinom(7, 8, 0.75)
                         