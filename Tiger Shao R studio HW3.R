setwd("C:\\Users\\Jiang Shao\\Desktop\\bees")
data = read.csv("students.csv")

#Create a Contingency Table using the gender and hair 
#color data located in the ¡°students.csv¡± file. Add margins 
#and use the table to answer the following questions

conting_hair <- addmargins(table(data$Gender, data$Hair))
conting_hair
conting_eye <- addmargins(table(data$Gender, data$Eye))
conting_eye

#What is the probability of having brown hair if you are male?  
prob_male_brown <- conting_hair[2, 3] / conting_hair[2, 5]
prob_male_brown

#What is the probability of having red hair if you are female
prob_female_red <- conting_hair[1, 4] / conting_hair[1, 5]
prob_female_red

#If you have blond hair, what is the probability you are female
prob_blond_female <- conting_hair[1, 5] / conting_hair[3, 5] * (conting_hair[1, 2]/conting_hair[1, 5])
prob_blond_female

#Create two Contingency Tables - one for males and one for 
#females with eye color and hair color.
conting_sex <- addmargins(table(data$Eye, data$Hair, data$Gender))
conting_sex

#What are the probabilities of having hazel eyes for males 
#and for females?
prob_hazel_male <- conting_sex[4, 5, 2] / conting_sex[5, 5, 2]
prob_hazel_female <- conting_sex[4, 5, 1] / conting_sex[5, 5, 1]
prob_hazel_male
prob_hazel_female

#What is the probability of having blue eyes if you are 
#blond (for females and for males)?
prob_blue_female <- conting_sex[1, 5, 1] / conting_sex[5, 5, 1]
prob_blue_male <- conting_sex[1, 5, 2] / conting_sex[5, 5, 2]
prob_blue_female
prob_blue_male

#For males, is having brown eyes independent of hair color? 
#Why or why not? To figure this out, calculate whether the 
#probability of having brown eyes is the same as or different 
#from the conditional probability of having brown eyes given that 
#you have each hair color. 
prob_brown_male <- conting_sex[2, 5, 2] / conting_sex[5, 5, 2]
prob_brown_male
prob_brown_BLAhair <- conting_sex[2, 1, 2] / conting_sex[5, 1, 2]
prob_brown_BLAhair
prob_brown_BLOhair <- conting_sex[2, 2, 2] / conting_sex[5, 2, 2]
prob_brown_BLOhair
prob_brown_BROhair <- conting_sex[2, 3, 2] / conting_sex[5, 3, 2]
prob_brown_BROhair
prob_brown_REDhair <- conting_sex[2, 4, 2] / conting_sex[5, 4, 2]
prob_brown_REDhair


f <- rbinom(10000, 10, 0.5)
f
hist(f, xlab = "success result", ylab = "frequency", main = "histogram of the results from 10,000 trials", xlim = c(0, 10), ylim = c(0, 3000), breaks = 10)

flip10000 <- sample(x <- c(0:10), 10000, replace = T)
flip10000
hist(flip10000, xlab = "number", ylab = "Frequency", xlim = c(0, 10), ylim = c(0, 2000), breaks = 10, main = "10k times number selection")

#4)	There are 8 teams in the Pacific Division of the NHL. 
#How many different ranking orders are possible? 
#Of the 8 teams in the Pacific Division, only 3 
#are guaranteed to move on to the playoffs. How many 
#possible combinations are there?
factorial(8)
factorial(8)/(factorial(5)*factorial(3))


#How many different seating arrangements are possible 
#for this collection of 20 fans?
factorial(20)/(factorial(4)*factorial(8)*factorial(2)*factorial(6))


  
