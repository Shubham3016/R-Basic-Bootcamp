
'
What is a Function in R?
A function, in a programming environment, is a set of instructions.
A programmer builds a function to avoid repeating the same task, or reduce complexity.

Formally, a function is a useful device that groups together a set of statements  so they can be run more than once. 
They can also let us specify parameters that can serve as inputs to the functions.
'

# Define a simple function

myFirstFun<-function(n)
{
# Compute the square of integer `n`
    n*n   
}

# Assign `10` to `k`

k <- 10

# Call `myFirstFun` with that value

m <- myFirstFun(k)

# Call `m` 
m

# EXAMPLE 

# Define a simple function

hello <- function(){
  print("welcome")
}

# call hello function

hello()


# Example

# Define a simple function

helloyou <- function(name){
  print(paste("hello",name))
}

# Call `helloyou` with that value

helloyou('sam')


# Example

add.num <- function(num1,num2){
  print(num1+num2)
}

add.num(2,4)

# EXample

hello.someone <- function(name="frankie"){
  print(paste("hello",name))
}

hello.someone()

# Example


formal <- function(name='sam',title='sir'){
  print(paste(title,name))
}

formal()


formal <- function(name='sam',title='sir'){
  return(paste(title,name))
}

formal('welcome')
?return

# here we are not printing, we are returning, we can assign this to a variable:

var<-formal('Bob','MS.')
var

# Example

demo <- function(a) {
  a <- 2*a
  a
}

y <- 5
demo(y)

y

# Sets default of exponent to 2 (just square)

MyThirdFun <- function(n, y = 2) 
{
  # Compute the power of n to the y
  n^y  
}

# Specify both args
MyThirdFun(2,3) 

# Just specify the first arg
MyThirdFun(2)   

'In this case, you see that if you specify both arguments, the function computes
2^3=8.

When you pass only the first, our n, the function uses the default y=2, 
to carry out the computation. If you omit the arguments, R throws an error. 
Uncomment the line to see the error!

'
