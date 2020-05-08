# R BASIC DATA TYPES

# First We Start with the Numerics data type

# Numerics
x <- 10

# Integers 
# Natural (whole) numbers are known as integers and are also part of the numeric class

i <- 5
a <- 2L


# Here we assign the value 2L to a variable a  
#We use 2L Because by default R will decide for you how should store the data
# All the Arithmetic opeation are always conducted on double level because
# so if you not going to run the arithmetic opeartion and you are not going to add them or creating them then you can use L 
which stores in integer format

# Double
y <- 2.5

# Logicals
# Boolean values (True and False) are part of the logical class. In R these are written in All Caps.

t <- TRUE
f <- FALSE

# Characters
# Text/string values are known as characters in R. You use quotation marks to create a text character string:

char <- "R is programming Language"
char

# Complex
z<-3+2i


# Checking Data Type Classes
# You can use the class() function to check the data type of a variable:

class(x)

class(i)

class(a)

class(y)

class(t)

class(f)

#typeof determines the (R internal) type or storage mode of any object

typeof(x)

typeof(i)

typeof(a)

typeof(y)

typeof(t)

typeof(f)
