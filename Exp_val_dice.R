#Expected value of rolling 3 dice and earning sum of outcomes plus 3
rm(list = ls()) #clear environment 

# Part 1: Theoretical Prediction
#Expected value is 13.5 

#Part 2: Numerical 
d1 <- sample(c(1,2,3,4,5,6), 3, replace = TRUE) #using sample()
modifier <- 3

#Part 2.2: Replicate 

d10000 <- replicate(10000, sample(c(1,2,3,4,5,6), 1, replace = TRUE) + sample(c(1,2,3,4,5,6), 1, replace = TRUE) + sample(c(1,2,3,4,5,6), 1, replace = TRUE))

#Part 3: Comparison 
cat("Numerical = ", (sum(d10000)/ 10000) + modifier, "Theoretical =", 13.5, "\n")
