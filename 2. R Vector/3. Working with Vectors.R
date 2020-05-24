vector1 <- c(10,20,30)
vector2 <- c(5,6,7)


vector1 + vector2    # 15 26 37

vector1 - vector2    # 5 14 23 

vector1 * vector2    # 50 120 210

vector1 / vector2    # 2.000000 3.333333 4.285714

# Functions with Vectors

Let's learn some useful functions that we can use with vectors! 

#name_of_function(input)

# x <- c(1,12,34,45)   # combine
# y <- seq(2,10,2)     # sequence  seq(from=2, t0=10, by= 2)
# z <- rep("hi",3)     # replicate

rep(1,10) # repete number 1,10 times
# 1 1 1 1 1 1 1 1 1 1

seq(2,6) # sequence of integer between 2 and 6
# 2 3 4 5 6

seq(4,20,by=4) 
# 4  8 12 16 20


v1 <- c(1,3,4)
# SUM

sum(v1) #(1+3+4)=7

# MEAN

mean(v1)   
# 2.33 (1+3+4)/3=2.33

# Standard Deviation
sd(v1)  # 1.527525

# Variance
var(v1)  # 2.33

# Maximum

max(v1)  # 3 Maximum Element

min(v1)  #1 Minimum Element

# Product of elements

prod(v1)  #(1*3*4)=12


var <- 'a variable'
cat("my variable is :",var)

var <- 25
cat('my number is',var)

# Could also use

print(paste0("variable is ",var))

