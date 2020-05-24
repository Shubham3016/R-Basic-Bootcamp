# while loops

'
while loops are a used to have your program continuously run some block of code until a condition is met (made TRUE).
The syntax is:

  while (condition){
    # Code executed here 
    # while condition is true
  }
'  

# WHILE LOOP

while(TRUE){
  print("hello")
}

# EXAMPLE

counter<- 1
while(counter<12){
  print(counter)
  counter<-counter+1  
}

# EXAMPLE

i <- 1
while (i < 6) {
  print(i)
  i = i+1
}


# EXAMPLE

x<-0
while(x<10){
  cat('x is ',x)
  print('x is less then 10,adding 1 to x')
  x<-x+1
  }

# EXAMPLE 

x <- 0
while(x < 10){
  x<-x+1
  print("Great!")
}


# repeat and break Statement in R

# Repeat loop
# Syntax 

'repeat { 
  commands 
  if(condition) {
    break
  }
}
'

v <- c("Hello","loop")
ct <- 2

repeat {
  print(v)
  ct <- ct+1
  
  if(ct > 5) {
    break
  }
}


val <- 5
repeat {
  print(val)
  val <- val+1
  if (val == 10){
    break
  }
}


#BREAK

# You can use break to break out of a loop.A break statement is used in a loop to stop the iterations and flow the control outside of the loop


values = 1:10
for (id in values){
  if (id == 2){
    break
  }
  print(id)
}


# EXAMPLE

x<-0
while(x<10){
  cat('x is currently is ',x)
  print('x is still less then 10,adding 1 to x')
  x<-x+1
  if(x==10){
    print('x is equal to 10')
    break
    print("I will also print, woohoo!")
  }
}

