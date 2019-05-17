mean(trees$Height)
median(trees$Height)

var(trees$Height)
sd(trees$Height)



z_score <- (68 - mean(trees$Height))/sd(trees$Height)
z_score

pnorm(z_score, 0, 1, lower.tail = TRUE)
pnorm(z_score, 0, 1, lower.tail = FALSE)

qnorm(0.25, 76, sd(trees$Height))

qnorm(1 - 0.1, 76, sd(trees$Height))


z <- ((trees$Height - mean(trees$Height))/sd(trees$Height))
prob <- pnorm(z, 0, 1, lower.tail = TRUE)
plot(trees$Height, prob, xlab = "tree height", ylab = "Probability", main = "scatterplot for tree height and probability")

qqnorm(trees$Height, pch = 20)
qqline(trees$Height)