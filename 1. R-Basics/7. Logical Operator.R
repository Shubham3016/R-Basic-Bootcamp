# Logical operators also called Boolean operators, are useful when you want to combine the results of two or more comparisons

# AND(&) :- if all comparison outcomes are TRUE, the result is TRUE

# OR (|):-  if there is a TRUE value anywhere in the expression, R returns TRUE

# ! SIMPLE NOT 
# | OR
# & AND
# isTrue(x)


result<- 4 < 5     #true
result

typeof(result)

result2 <- 1 > 4   #false
result2

typeof(result2)


# Defining Logical value

a <- TRUE   #T
class(a)
# [1] "logical"

class(b)
# [1] "logical"


# AND OPERATION

TRUE & TRUE
# [1] TRUE

TRUE & FALSE
# [1] FALSE

FALSE & FALSE
# [1] FALSE

FALSE & TRUE
# [1] FALSE

# Imagine the variable x
x <- 10

x < 20
# TRUE

x > 5
# TRUE

x < 20 & x > 5
# TRUE

(x < 20) & (x>5)
# TRUE

x==2 & x > 1
# FALSE
# Returned FALSE because x==2 is FALSE and  x > 1 is TRUE,  we need BOTH to be TRUE.

# OR OPERATION

TRUE | TRUE
# [1] TRUE

TRUE | FALSE 
# [1] TRUE

FALSE |TRUE
# [1] TRUE

FALSE | FALSE
# [1] FALSE

TRUE != TRUE
# [1] FALSE

TRUE != FALSE
# [1] TRUE

# Imagine the variable x
x <- 20

x==2 | x > 1
# TRUE

x==1 | x==12
# FALSE


# NOT !
# s this NOT true?"

(10==1)
# FALSE

!(10==1)
# TRUE

# We can stack them (pretty uncommon, but possible)
!!(10==1)
