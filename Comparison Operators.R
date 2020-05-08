
# Comparison Operators

# Greater then

5>6 # False

6>5 # True

# We can also comparisons operator for two vectors:
  
v1 <- c(5,8,2)
v2 <- c(60,2,45)

v1 < v2  #(5<60) TRUE (8<2) FALSE (2<45) TRUE

# Greater Than or Equal to

9 >= 9
# TRUE

4 >= 5
# False

9 >= 7
# True

# Less Than and Less than or Equal To

1 < 2
# TRUE

6 <= 2
# FALSE

# careful with comparison operators and negative numbers!

var<-1  # Here we assign the value 1 for var variable 
var     # 1va

# Comparing var less than negative 2

var < -2 # as we assign the variable here 1 so 1<-2 which returns FALSE 
# FALSE


# Not Equal

5 != 3 # Returns TRUE Here 5 is not equal to 3 
# TRUE 

5 != 5 # Returns FALSE Because Here 5 is equal to 5 which is RIght but NoT Equal to operator Returns False
# FALSE 

# Equal

5 == 5 # Here 5 is equal to 5 returns TRUE
# TRUE

2 == 3 # Here 2 is not equal to 3 retursn False (2===2)=is TRUE 
# False 

# Vector Comparisons

# we can apply a comparison to an entire vector:
  
v <- c(1,2,3,4,5)

v < 2 
# (1<2) TRUE,(2<2) FALSE,(3<3) FALSE,(4<2) FALSE,(5<2) FALSE

v == 3
# FALSE FALSE  TRUE FALSE FALSE

# Here very important function which we can use while we get stuck in some code to understand about the  Function

help(vector) # Gives documentation on vector 

?vector # also use question marks and function name which is help function
??numeric

help.search('numeric') # search the help system

apropos("vector") # The names of all objects in the search list matching the regular expression ”function which you need” 

dir() # show files in the current directory

# Can also do a quick stats summary:
v <- c(5,6,8,9,80)
summary(v) # Gives whole statistical summary of differnet classes

str(a) # display the internal structure of an R object
