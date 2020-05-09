'''
Vectors are one of the key data structures in R. A vector is a 1 dimensional array that can hold character, numeric, or logical data elements.
We can create a vector by using the combine function c(). To use the function, we pass in the elements we want in the array,
with each individual element separated by a comma.
'''

# Using c() to create a vector of numeric elements

vec1 <- c(1,2,3,4,5)

class(vec1) # numeric
is.numeric(v1) # Returns True given vector is in numeric format

v1 <- c(1L,2L,3L,4L,5L)

class(v1) # Integer
is.integer(v1) # Returns True because R store it as integer
is.double(v1)  # Returns False because it is in integer format

# Vector of characters

vec2 <- c('A','B','C')
class(vec2) # character
is.character(v1) # Returns True given vector is in character format


lvec <- c(TRUE,FALSE)
class(lvec) #logical
is.logical(lvec)  # Return True

v1 <- c(FALSE,2)
class(v1) # numeric
# as it class type return numeric beacause in vector v1 one variable is FALSE which is logical and one variable is 2 which is numeric 
# but in vector it store it as numeric as there is numeric value in vector.

is.logical(lvec) # false 


v2<-c('A',1)
v2
class(v2) # character

# Fundamental principal of R is that is relies that vector you can find data elements of same basic data type 
# Don't mix data elements in same vector make a different vector for different data elements

# Vector Names

# We can use the names() function to assign names to each element in our vector. 

my.vector <- c(72,71,69,75,71)
my.vector

names(my.vector)<-c('a','b','c','d','e')
my.vector

# We don't have to rewrite the names vector over and over again,so we can use simple variable name as a names() assignment

d <- c('M','T','W','T','F','S','Sa')
no <- c(1,2,3,4,5,6,7)
names(no) <- d

