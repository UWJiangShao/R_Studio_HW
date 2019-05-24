setwd("C:/Users/Tiger (Jiang) Shao/Desktop/Bees")
data = read.csv("Lab6_vote.csv")

homerange <- c(11.67, 20.5, 12.79, 11.76)
mean(homerange)
sd(homerange)
n <- length(homerange)
df <- n-1
df

t.95 <- qt(0.95+(0.05/2), df)
e.95 <- t.95 * sd(homerange)/sqrt(n)
t.95
e.95

t.75 <- qt(0.75 + (0.25/2), df)
e.75 <- t.75 * sd(homerange)/sqrt(n)
t.75
e.75

mean(homerange) + e.95
mean(homerange) - e.95
mean(homerange) + e.75
mean(homerange) - e.75




E <- 1.282 * sqrt((0.6 * 0.4)/35)
interval_up <- 0.6 + E
interval_down <- 0.6 - E
interval_up
interval_down

vote <- length(which(data$voted == 'yes'))
vote
vote_yes1 <- vote/length(data$voted)
vote_yes1

#Or it could be
n_voter <- length(data$voted)
df_voter <- n_voter - 1
vote_yes <- sum(data$voted == 'yes')
vote_yes
vote_no <- n_voter - vote_yes
vote_p <- vote_yes / length(data$voted)
vote_p


z.90_vote <- qnorm(0.9+(0.1/2),0,1)
z.90_vote

z_stand <- (0.68 - 0.53)/sqrt((0.53*(1-0.53)/100))
z_stand

p_value <- 2 * pnorm(-abs(z_stand), 0, 1)
p_value







