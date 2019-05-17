setwd("C:\\Users\\Jiang Shao\\Desktop\\Bees")
data <- read.csv("Lab6_hike.csv")
miles <- data$Average.miles.per.day
mean(miles)
var(miles)
sd(miles)
n = length(miles)
n


df <- n-1
t.95 <- qt(0.95 + (0.05/2), df)
e.95 <- t.95 * sd(miles)/sqrt(n)

t.90 <- qt(0.9 + (0.1/2), df)
e.90 <- t.90 * sd(miles)/sqrt(n)

mean(miles) - e.95
mean(miles) + e.95
mean(miles) - e.90
mean(miles) + e.90


z.95 <- qnorm(0.975)
sd.2 <- 6
e.95 <- 1.5
n_sample <- ((z.95 * sd.2)/e.95)^2
n_sample

litter <- read.csv("Lab6_litter.csv")
head(litter)

litter <- litter$Litterdepth 
n<- length(litter)
mean_litter <- mean(litter)
sd_litter <- sd(litter)
df <- n-1
t.90_litter <- qt(0.9 + 0.1/2, df)
e.90_litter <- t.90_litter * sd_litter/sqrt(n)
mean_litter - e.90_litter
mean_litter + e.90_litter

t.stat <- (mean_litter -2.5)/(sd_litter/sqrt(n))
t.stat 

2* pt(t.stat, df)