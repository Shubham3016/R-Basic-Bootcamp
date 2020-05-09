
# R BASIC DATA TYPES

# First We Start with the Numerics data type
# ( <- ) Which is use to assign the variable

# Numerics

x <- 10
class(x)  # numeric
typeof(x) # double 

# Integers 
# Natural (whole) numbers are known as integers and are also part of the numeric class

a <- 2L
typeof(a) # integer
class(a)  # integer

# a is a numeric vector. These are the most common kind. They are numeric objects and are treated as double precision real numbers.
# To explicitly create integers, add a L at the end.

# We use 2L Because by default R will decide for you how should store the data.
# All the Arithmetic opeation are always conducted on double level because if you are not going to run the arithmetic opeartion 
# and you are not going to add them or creating them then you can use L which stores in integer format


# Double

y <- 2.5 # Double
typeof(y)
class(y)


# Logicals
# Boolean values (True and False) are part of the logical class.

t <- TRUE
typeof(t) # logical
class(t) # logical

f <- FALSE
typeof(f) # logical
class(f) # logical

# Characters
# Text/string values are known as characters in R. You use quotation marks to create a text character string:

char <- "R is programming Language"
char

typeof(char) # character
class(char) # character

# Complex
z<-3+2i
typeof(z) # complex
class(z) # complex

Re(x) # print real value in x
Im(x) # print Imaginary Numbers

# Checking Data Type Classes
# You can use the class() function to check the data type of a variable:
# typeof determines the (R internal) type or storage mode of any object


# Don't get confused in 1L and 1 because most of the time we are going to use only numeric data type 
