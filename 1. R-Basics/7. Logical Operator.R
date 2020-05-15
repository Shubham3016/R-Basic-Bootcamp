# Logical operators also called Boolean operators, are useful when you want to combine the results of two or more comparisons

# AND(&) :- if all comparison outcomes are TRUE, the result is TRUE

# OR (|):-  if there is a TRUE value anywhere in the expression, R returns TRUE

# ! SIMPLE NOT 
# | OR
# & AND
# isTrue(x)


result<-4<5     #true
result
typeof(result)

result2<-!(5>1)   #false
result2
typeof(result2)

# Defining Logical value

a<-TRUE   #T

class(a)
# [1] "logical"

class(b)
# [1] "logical"

TRUE & TRUE
# [1] TRUE

TRUE & FALSE
# [1] FALSE

FALSE & FALSE
# [1] FALSE

FALSE & TRUE
# [1] FALSE

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

