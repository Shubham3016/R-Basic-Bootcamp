 '
abs(x)	computes the absolute value.
sqrt(x)	square root
sum(): returns the sum of all the values present in the input.
round(x, digits=n)	round(3.475, digits=2) is 3.48
ceiling(x)	ceiling(3.475) is 4
floor(x)	floor(3.475) is 3
trunc(x)	trunc(5.99) is 5
signif(x, digits=n)	signif(3.475, digits=2) is 3.5
cos(x), sin(x), tan(x)	also acos(x), cosh(x), acosh(x), etc.
log(x)	natural logarithm
log10(x)	common logarithm
exp(x)	e^x
'
# lets look at a example
 
# abs(x)	computes the absolute value.
 
v <- c(-1,0,1,2,3,4,5)

abs(2)
# [1] 2

abs(1)
# [1] 1

abs(-1)
# [1] 1

abs(-8)
# [1] 8

abs(v)
# [1] 1 0 1 2 3 4 5

# sqrt(x)	square root 

x <- c(1,5,6)
sqrt(x)

#[1] 1.000000 2.236068 2.449490

sqrt(4)
# [1] 2

# sum(): returns the sum of all the values present in the input. 

v<- c(-1,0,1,2,3,4,5)

sum(v)
# [1] 14

# round(x, digits=n)	round(3.475, digits=2) is 3.48 
round(23.123)
# [1] 23

round(23.3414,2)
# [1] 23.34

# ceiling(x)	ceiling(3.475) is 4 

ceiling(5.26)
# [1] 6

# floor(x)	floor(3.475) is 3

floor(6.99)
# [1] 6

# trunc(x)	trunc(5.99) is 5 

trunc(9.99)
# [1] 9

# signif(x, digits=n)	signif(3.475, digits=2) is 3.5

signif(23.345,2)
# [1] 23

# log(x)	natural logarithm

log(1)
# [1] 0

log(2)  
# [1] 0.6931472

# log10(x)	common logarithm
 
log10(3)
# [1] 0.4771213

# exp computes the exponential function.

exp(23)
# [1] 9744803446
