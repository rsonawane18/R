#Variance of tossing 3 coins and earning sum of outcomes plus 3
rm(list=ls()) #clear environment 

#Part 1: Theoretical
#Variance plus 3 is 3.75

#Part 2: Numerical 

earnings <- replicate(10000, sample(c(0,1), 1, replace = TRUE) + sample(c(0,1), 1, replace = TRUE) + sample(c(0,1), 1, replace = TRUE))


#Part 3: Comparison
cat("Numerical =", var(earnings) + 3, "Theoretical =", 3.75, "\n")
