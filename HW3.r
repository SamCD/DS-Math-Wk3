#CH 7
#Q1
# If scores are normally distributed with a mean of 35 and a standard deviation of
# 10, what percent of the scores is:
mu <- 35
sig <- 10
# a. greater than 34?
X <- 34
Z <- (X - mu) / sig
p = 1 - 0.4602
# p = 0.5398

# b. smaller than 42?
X <- 42
Z = (X - mu) / sig
# p = 0.7580

# c. between 28 and 34? 
X1 <- 28
X2 <- 34
Z1 <- (X1 - mu) / sig
Z2 <- (X2 - mu) / sig
p <- (1 - 0.2420) - 0.5398
# p = 0.2182

#Q2
# What are the mean and standard deviation of the standard normal distribution?
mu <- 0
sig <- 1

# (b) What would be the mean and standard deviation of a distribution created by
# multiplying the standard normal distribution by 8 and then adding 75?
mu <- mu * 8 + 75
sig <- sig * 8 + 75
# 75, 83

#Q3
# The normal distribution is defined by two parameters. What are they?
mu <- "Mean"
sigma <- "Standard Deviation"

#Q4
# What proportion of a normal distribution is within one standard deviation of the
# mean? 
p <- 0.68
#(b) What proportion is more than 2.0 standard deviations from the mean?
p <- 0.0228
#(c) What proportion is between 1.25 and 2.1 standard deviations above the mean?
p <- 0.0877 # 0.1056 - 0.0179

#Q5
# A test is normally distributed with a mean of 70 and a standard deviation of 8.
mu <- 70
sig <- 8
# (a) What score would be needed to be in the 85th percentile?
Z <- 1.04
X <- Z * sig + mu
# 78.32
# (b) What score would be needed to be in the 22nd percentile?
Z <- -0.77
X <- Z * sig + mu
# 63.84

#Q6
# Assume a normal distribution with a mean of 70 and a standard deviation of 12.
mu <- 70
sig <- 12
# What limits would include the middle 65% of the cases?
Z2 <- 0.94
Z1 <- -0.93
X2 <- Z2 * sig + mu
X1 <- Z1 * sig + mu
# 58.84 < X < 81.28

#Q7
# A normal distribution has a mean of 20 and a standard deviation of 4.
#Find the Z scores for the following numbers:
mu <- 20
sig <- 4
#(a) 28
X1 <- 28
Z1 <- (X1 - mu) / sig
# Z = 2

#(b) 18
X2 <- 18
Z2 <- (X2 - mu) / sig
# Z = -0.5

#(c) 10
X3 <- 10
Z3 <- (X3 - mu) / sig
# Z = -2.5

#(d) 23
X4 <- 23
Z4 <- (X4 - mu) / sig
# Z = 0.75

#Q8
# Assume the speed of vehicles along a stretch of I-10 has an approximately
# normal distribution with a mean of 71 mph and a standard deviation of 8 mph.
mu <- 71
sig <- 8

# a. The current speed limit is 65 mph. What is the proportion of vehicles less than
# or equal to the speed limit?
X <- 65
Z <- (X - mu) / sig
# p = 0.2266

# b. What proportion of the vehicles would be going less than 50 mph?
X <- 50
Z <- (X - mu) / sig
# p = .0043

# c. A new speed limit will be initiated such that approximately 10% of vehicles
# will be over the speed limit. What is the new speed limit based on this criterion?
Z <- 1.29
X <- Z * sig + mu
# 81.32 mph

# d. In what way do you think the actual distribution of speeds differs from a
# normal distribution?
ans <- "It is probably skewed right, since more cars will be driving 100 mph than 0 mph"

#Q9
#  A variable is normally distributed with a mean of 120 and a standard deviation
# of 5. One score is randomly sampled.
mu <- 120
sig <- 5
# What is the probability it is above 127?
X <- 127
Z <- (X - mu) / sig
p <- 0.0808 # 1 - 0.9192

#Q10
# You want to use the normal distribution to approximate the binomial
# distribution. Explain what you need to do to find the probability of obtaining
# exactly 7 heads out of 12 flips.
mu <- 12*0.5
sig <- sqrt(12*0.5*0.5)
X1 <- 6.5
X2 <- 7.5
Z1 <- (X1 - mu) / sig
Z2 <- (X2 - mu) / sig
p <- 0.1910 # 0.8051 - 0.6141

#CH 9
#Q6
#  If the correlation between reading achievement and math achievement in the
#population of fifth graders were 0.60, what would be the probability that in a
# sample of 28 students, the sample correlation coefficient would be greater than
# 0.65?
Zprime1 <- 0.5 * log(1.6/0.4)
Zprime2 <- 0.5 * log(1.65/0.35)
SE <- 1 / sqrt(28 - 3)
Z <- (Zprime2 - Zprime1) / SE
# p = 0.6591

#Q7
# If numerous samples of N = 15 are taken from a uniform distribution and a
# relative frequency distribution of the means is drawn, what would be the shape of
# the frequency distribution?
shape <- "Bell Curve"

#Q8
# A normal distribution has a mean of 20 and a standard deviation of 10. Two
# scores are sampled randomly from the distribution and the second score is
# subtracted from the first. What is the probability that the difference score will be
# greater than 5? Hint: Read the Variance Sum Law section of Chapter 3.
sig1 <- 10
sig2 <- 10
sig <- sig1 + sig2
mu <- 20
X <- 5
Z <- (X - mu) / sig
p <- 0.7734 # 1 - 0.2266

#Q9
# What is the shape of the sampling distribution of r? In what way does the shape
# depend on the size of the population correlation?
a <- "shape is Skewed Right"
b <- "The higher the correlation, the more exxagerated the skew"

#Q10
# If you sample one number from a standard normal distribution, what is the
# probability it will be 0.5?
p <- 0

#CH 10
#Q10
# The effectiveness of a blood-pressure drug is being investigated. How might an
# experimenter demonstrate that, on average, the reduction in systolic blood
# pressure is 20 or more?
ans <- "Show a confidence interval lower-bound at 20, i.e. 20 < x < 25"

#Q11
# A population is known to be normally distributed with a standard deviation of
# 2.8.
sig <- 2.8
# (a) Compute the 95% confidence interval on the mean based on the
# following sample of nine: 8, 9, 10, 13, 14, 16, 17, 20, 21.
set <- c(8,9,10,13,14,16,17,20,21)
x <- mean(set)
N <- 9
sigM <- sig / sqrt(N)
CI95 <- c(x - (1.96 * sigM), x + (1.96 * sigM))
# 12.39 < mu < 16.05156

# (b) Now compute the 99% confidence interval using the same data.
CI99 <- c(x - (2.58 * sigM), x + (2.58 * sigM))
# 11.81 < mu < 16.63

#Q12
# A person claims to be able to predict the outcome of flipping a coin. This
# person is correct 16/25 times. Compute the 95% confidence interval on the
# proportion of times this person can predict coin flips correctly. What
# conclusion can you draw about this test of his ability to predict the future?
p <- 16/25
sigp <- sqrt((p*(1-p))/N)
CI <- c(p - (1.96 * sigp), p + (1.96 * sigp))
# 0.3264 < p < 0.9536
#This results of this test will vary depending on the sample size

#Q13
#  What does it mean that the variance (computed by dividing by N) is a biased
# statistic?
ans <- "The variance changes with respect to the sample size, and can be innacurate
        with a smaller sample size"

#Q14
# A confidence interval for the population mean computed from an N of 16
# ranges from 12 to 28. A new sample of 36 observations is going to be taken.
# You can’t know in advance exactly what the confidence interval will be
# because it depends on the random sample. Even so, you should have some idea
# of what it will be. Give your best estimation.
df1 <- 15
cl1 <- 2.131 #t for 15 DF
sig <- (20 - 12) / cl1
cl2 <- 2.03 #t for 35 DF
CI2 <- c(20 - (cl2 * sig), 20 + (cl2 * sig))
# 12.379 < X < 27.621

#Q15
# You take a sample of 22 from a population of test scores, and the mean of your
# sample is 60.
x <- 60
N <- 22
# (a) You know the standard deviation of the population is 10.
# What is the 99% confidence interval on the population mean.
sig <- 10
CI <- c(x - (2.08 * sig), x + (2.08 * sig))
# 39.2 < mu < 80.8

# (b) Now assume that you do not know the population standard deviation,
# but the standard deviation in your sample is 10.
# What is the 99% confidence interval on the mean now?
sig <- 10/sqrt(N)
CI <- c(x - (2.08 * sig), x + (2.08 * sig))
# 55.57 < mu < 64.43

#Q16
# You read about a survey in a newspaper and find that 70% of the 250 people
# sampled prefer Candidate A. You are surprised by this survey because you
# thought that more like 50% of the population preferred this candidate. Based
# on this sample, is 50% a possible population proportion? Compute the 95%
# confidence interval to be sure.
p <- 0.7
N <- 250
sig <- sqrt((p * (1-p)/N))
CI <- c(p - (1.96 * sig) - (0.5 / N),p + (1.96 * sig) + (0.5 / N))
# 0.64 < P < 0.76
# It is unlikely that 0.50 is a good estimate since it is not contained in the interval

#Q17
# Heights for teenage boys and girls were calculated. The mean height for the
# sample of 12 boys was 174 cm and the variance was 62. For the sample of 12
# girls, the mean was 166 cm and the variance was 65. Assuming equal variances
# and normal distributions in the population
M1 <- 174
s1 <- 62
M2 <- 166
s2 <- 65

# (a) What is the 95% confidence interval on the difference between population means?
Tdf <- 2.201 # 95% t-value for 11 degrees of freedom
CI <- c(M1 - M2 - (Tdf * (s1 - s2)),M1 - M2 + (Tdf * (s1 - s2)))
# 1.4 < diff < 14.6

# (b) What is the 99% confidence interval on the difference between population means?
Tdf <- 3.106 # 99% t-value for 11 degrees of freedom
CI <- c(M1 - M2 - (Tdf * (s1 - s2)),M1 - M2 + (Tdf * (s1 - s2)))
# -1.3 < diff < 17.3

# (c) Do you think it is very unlikely that the mean difference in the population is about 5?
# Why or why not?
Ans <- "No"
# It is likely, since 5 is contained in the confidence interval

#Q18
# You were interested in how long the average psychology major at your college
# studies per night, so you asked 10 psychology majors to tell you the amount
# they study. They told you the following times: 2, 1.5, 3, 2, 3.5, 1, 0.5, 3, 2, 4.
# (a) Find the 95% confidence interval on the population mean.
set <- c(2,1.5,3,2,3.5,1,0.5,3,2,4)
x <- mean(set)
N <- 10
s <- sd(set)/sqrt(N)
t95 <- 2.262
CI <- c(x - (t95 * s),x + (t95 * s))
# 1.45 < mu < 3.05

# (b) Find the 90% confidence interval on the population mean.
t90 <- 1.833
CI <- c(x - (t90 * s),x + (t90 * s))
# 1.61 < mu < 2.89

#Additional
#Q1
Fx <- function(x,a) #CDF
{
  1 - exp(-a * x)
}
fx <- function(a,x) #pdf = derivative of Fx
{
  exp(-a * x)*(-a)
}
Ex <- integrate(integrate(fx,0,Inf ~ a),0,Inf)
Ex <- integrate(fx(0) - fx(Inf),0,Inf)
Ex <- integrate(-a - 0,0,Inf)
Ex <- 0 - (- Inf) = Inf
Var <- E[x^2] - Ex^2

#Q2
fy <- (exp(-b) * b^y) / fact(y)
Ex <- integrate(integrate(fy,0,Inf ~ b),0,Inf)
Ex <- integrate(fy(0) - fx(Inf),0,Inf)
Ex <- integrate(exp(-b)/1 - Inf),0,Inf)
Ex <- 0 - Inf - 0
Ex <- -Inf
Var <- E[x^2] - Ex^2
