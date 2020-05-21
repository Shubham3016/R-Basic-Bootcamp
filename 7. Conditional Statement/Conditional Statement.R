# Conditional Statement

'
if, else, else if Statements

Here is the syntax for an if statement in R:
  
  if (condition){
    # Execute some code
  }
'

x <- 5  # here We assign the value of x

if(x > 0){
  print("Positive number") # here the x variable has positive number  which is 5
}

# Returns Positive

x <- -6 # value which is assign is -6 

if(x < 1) {
print("positive  number") 
}

# here we can see that 1 is greater then -6 so it returns positive number


# Example 

# Greater then

Marks <- 60

if(Marks > 40){
  pass <- TRUE
}

print(pass)

# Less then

Marks <- 60

if(Marks < 40){
  pass <- TRUE
}

print(pass)


# EXAMPLE

marks<-50

if(marks > 40){
  print("TRUE")
}

# Example

Pass <- FALSE
marks <- 80

if(marks > 100){
  Pass <- TRUE
}

Pass

# EXample

if(1==1){
  print("hii")
}

# ELSE

# If we want to execute another block that occurs if the if statement is false, 
# we can use an else statement to do this! It has the syntax:
  
'
if (condition) {
# Code to execute if true
} else {
# Code to execute if above was not true
}
'

temp <- 30

if(temp>90){      #(30>90)
  print('not hot')
}else{
  print('its hot ')
}


# else if

'
if we wanted more options to print out, rather than just two, 
the if and the else? This is where we can use the else if statement to 
add multiple condition checks, using else at the end to execute code
if none of our conditions match up with and if or else if.
'

temp <- 25

if(temp > 40){
  print('Its Not Hot')
}else if(temp < 30 & temp < 40){
  print('its Hot')
}else{
  print("its colder")
}


temp <- 30

if(temp > 80){
  print("Hot outside")
}else if(temp < 80 & temp > 50){  #(30<80)&(30<50)=T&F=F
  print("Nice")
}else if(temp < 50 & temp > 33){ #(30<50)&(30>33)=T&F=F
  print("Its damn hot")
}else{
  print("its realy cold")
}



# Example

bread<-10
milk<-5

report<-'blank'

if(bread >= 5 & milk >=2){ # in if statement (10>=5)=T & (5>=2)=T (T & T)=T
  report<-"it is enought to eat"
}else if(bread==0 & milk==0){ 
  report<-"its Enough"
}else{
  report<-"No Need"
}

print(report)

# Here we can see as we assign value for bread and milk
# as we see In if condition it returns TRUE as both the values returns TRUE
# so as first condition is true so it returns "it is not enough to eat"

# Lets se same example with other condition


bread<-10
milk<-5

if(bread >= 11 & milk >=2){ # in if statement (10>=11)=F & (5>=2)=T (F & T)=F
  report<-"it is enought to eat"
}else if(bread==10 & milk==5){ # (10==10)=T & (5==5)=T (T&T)=T
  report<-"its Enough"
}else{
  report<-"No Need"
}

print(report)


# Example: Write a script that prints "Hello" if the variable x is equal to 1:

x <- 1

if (x ==1){
  print("Hello")
}

# Ex 1: Write a script that will print "Even Number" 
# if the variable x is an even number, otherwise print "Not Even":

x<-2
if(x %% 2==0){
  print('EVen Number')
}else{
  print("Not Even")
}

# Ex 2: Write a script that will print 'Is a Matrix' if the variable x is a matrix, 
# otherwise print "Not a Matrix". Hint: You may want to check out help(is.matrix)

x<-matrix()
if(is.matrix(x)){
  print('It Is Matrix')
}else{
  print("It is not")
}


x <- c(3,7,1)

if (x[1] > x[2]){ # 3>7
  fir <- x[1] # 3
  sec <- x[2] # 7
} else {
  fir <- x[2] # 7
  sec <- x[1] # 3
}


if ( x[3] > fir & x[3] > sec ) { #(1>3) & (1>7) F
  thi <- sec # 3
  sec <- fir # 7 
  fir <- x[3] # 1
} else if ( x[3] < fir & x[3] < sec ) { # (1<1 & 1<7) F
  thi <- x[3] # 7
} else {
  thi <- sec # 1
  sec <- x[3] #1
}

print(paste(fir, sec, thi))



# Ex 4: Write a script that uses if,else if, and else statements to print the max 
# element in a numeric vector with 3 elements.

x <- c(20, 10, 1)

if (x[1] > x[2] & x[1] > x[3] ) { #
  print(x[1] )
} else if (x[2] > x[3] ) {
  print(x[2])
} else {
  print(x[3])
}



x<-c(20,10,1)
if(x[1]>x[2]){
  print(x[1])
}
