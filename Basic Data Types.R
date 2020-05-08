
# R BASIC DATA TYPES

# First We Start with the Numerics data type

# Numerics

x <- 10
class(x)
typeof(x)

# Integers 
# Natural (whole) numbers are known as integers and are also part of the numeric class

a <- 2L
typeof(a)
class(a)

# We use 2L Because by default R will decide for you how should store the data.
# All the Arithmetic opeation are always conducted on double level because if you are not going to run the arithmetic opeartion 
# and you are not going to add them or creating them then you can use L which stores in integer format

# Double

y <- 2.5

typeof(y)
class(y)


# Logicals
# Boolean values (True and False) are part of the logical class.

t <- TRUE

typeof(t)
class(t)

f <- FALSE

typeof(f)
class(f)

# Characters
# Text/string values are known as characters in R. You use quotation marks to create a text character string:

char <- "R is programming Language"
char

typeof(char)
class(char)

# Complex
z<-3+2i
typeof(z)
class(z)

# Checking Data Type Classes
# You can use the class() function to check the data type of a variable:
# typeof determines the (R internal) type or storage mode of any object
