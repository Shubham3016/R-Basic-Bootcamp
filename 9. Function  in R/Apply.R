# Apply 
'The apply() function is the most basic of all collection.
sapply(), lapply() and tapply(). 


apply()takes Data frame or matrix as an input and gives output in vector,list or array. 
apply() Function is primarily used to avoid explicit uses of loop constructs. 
It is the most basic of all collections can be used over a matrice.
'

# apply() function

m1 <- matrix(C<-(1:10),nrow=5, ncol=6)
m1
app.m1 <- apply(m1, 2, sum)  
app.m1

# sum of column

#1+2+3+4+5=15  6+7+8+9+10=40  

# lapply()

help(lapply)

'lapply() function is useful for performing operations on list objects and 
returns a list object of same length of original set.lapply() returns a list of the similar length 
as input list object,each element of which is the result of applying FUN to the corresponding element of list. 
lapply() takes list, vector or data frame as input and gives output in list.'

movies <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <-lapply(movies,tolower)
str(movies_lower)

sample(x=1:10,2)

# EXAMPLE

v<-c(1,2,3,4,5) 

addrand<-function(x){
  ran<-sample(1:50,1)
  return(x+ran)
}
print(addrand(10))

lapply(v,addrand)


'sapply() function

sapply() function takes list, vector or data frame as input and gives output in vector or matrix.
It is useful for operations on list objects and returns a list object of same length of original set. 
sapply() function does the same job as lapply() function but returns a vector.'

dt <- cars
lmn_cars <- lapply(dt, min)
lmn_cars

smn_cars <- sapply(dt, min)
smn_cars

# let's prove it to ourselves

add_choice <- function(num,choice){
  return(num+choice)
}

add_choice(2,3)
v<-c(1,2,3,4,5)
lapp <- lapply(v,add_choice,choice=10)
sapp <- sapply(v,add_choice,choice=10)

class(lapp) # a list
class(sapp) # vector of numerics

# Example

v<-1:5
times2<-function(num){
  return(num*2)
}
print(v)

result<-sapply(v,times2) 
print(result)

# EXAMPLE

v<-c(1,2,3,4,5)
addrand<-function(x){
  ran<-sample(x=1:10,1)
  return(x+ran)
}

lapply(v,addrand)

lapply(v, function(a){a+sample(x=1:10,1)})

lapply(v, function(x){x+2})


# EXAMPLE

add_choice<-function(num,choice){
  return(num+choice)
}

add_choice(2,3)

lapply(v,add_choice,choice=10)
sapply(v,add_choice,choice=10)

lapp<-lapply(v,add_choice,choice=10)
sapp<-sapply(v,add_choice,choice=10)

class(lapp)
class(sapp)

# sapply() limitations
# sapply() won't be able to automatically return a vector if your applied function doesn't return something for all elements in that vector. For example:

# Checks for even numbers

even <- function(x) {
  return(x[(x %% 2 == 0)])
  }

nums <- c(1,2,3,4,5)

sapply(nums,even)

lapply(nums,even)


x <- list(a = 1, b = 1:3, c = 10:100)

# refer this

# https://mran.microsoft.com/
# https://stackoverflow.com/questions/3505701/grouping-functions-tapply-by-aggregate-and-the-apply-family

# tapply() function

'tapply() computes a measure (mean, median, min, max, etc..) or a function for each factor 
variable in a vector. It is a very useful function that lets you create a subset of a vector
and then apply some functions to each of the subset.'


data(iris)
tapply(iris$Sepal.Width, iris$Species, median)
