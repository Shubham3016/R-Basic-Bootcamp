# Apply 

'The apply() function is the most basic of all collection. sapply(), lapply() and tapply(). 

apply()takes Data frame or matrix as an input and gives output in vector,list or array. 
apply() Function is primarily used to avoid explicit uses of loop constructs. 
It is the most basic of all collections can be used over a matrice.'

# apply() function

m1 <- matrix(C<-(1:10),nrow=5, ncol=6)
m1
     [,1] [,2] [,3] [,4] [,5] [,6]
[1,]    1    6    1    6    1    6
[2,]    2    7    2    7    2    7
[3,]    3    8    3    8    3    8
[4,]    4    9    4    9    4    9
[5,]    5   10    5   10    5   10

app.m1 <- apply(m1, 2, sum)  
app.m1

[1] 15 40 15 40 15 40
 
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

List of 4
 $ : chr "spyderman"
 $ : chr "batman"
 $ : chr "vertigo"
 $ : chr "chinatown"

sample(x=1:10,2)
[1] 1 7
 
# EXAMPLE
 
v<-c(1,2,3,4,5) 
 addrand<-function(x){
   ran<-sample(1:50,1)
   return(x+ran)
 }
print(addrand(10))
[1] 58
 
lapply(v,addrand)

[[1]]
[1] 44

[[2]]
[1] 52

[[3]]
[1] 53

[[4]]
[1] 33

[[5]]
[1] 19

# sapply() function

'sapply() function takes list, vector or data frame as input and gives output in vector or matrix.
It is useful for operations on list objects and returns a list object of same length of original set. 
sapply() function does the same job as lapply() function but returns a vector.'

dt <- cars
lmn_cars <- lapply(dt, min)
lmn_cars

$speed
[1] 4

$dist
[1] 2

smn_cars <- sapply(dt, min)
smn_cars

speed  dist 
    4     2 

# let's prove it to ourselves

add_choice <- function(num,choice){
  return(num+choice)
}
 
add_choice(2,3)
[1] 5

v<-c(1,2,3,4,5)
lapp <- lapply(v,add_choice,choice=10)
sapp <- sapply(v,add_choice,choice=10)

class(lapp) # a list
[1] "list"

class(sapp) # vector of numerics
[1] "numeric"
 
# Example
 
v<-1:5
times2<-function(num){
  return(num*2)
}
print(v)
[1] 1 2 3 4 5
 
result<-sapply(v,times2) 
print(result)

[1]  2  4  6  8 10
 
# EXAMPLE
 
v<-c(1,2,3,4,5)
addrand<-function(x){
  ran<-sample(x=1:10,1)
  return(x+ran)
}
 
lapply(v,addrand)

[[1]]
[1] 6

[[2]]
[1] 6

[[3]]
[1] 4

[[4]]
[1] 6

[[5]]
[1] 6

lapply(v, function(a){a+sample(x=1:10,1)})

[[1]]
[1] 11

[[2]]
[1] 3

[[3]]
[1] 13

[[4]]
[1] 8

[[5]]
[1] 10

 
lapply(v, function(x){x+2})
[[1]]
[1] 3

[[2]]
[1] 4

[[3]]
[1] 5

[[4]]
[1] 6

[[5]]
[1] 7

# EXAMPLE

add_choice<-function(num,choice){
  return(num+choice)
}

add_choice(2,3)
[1] 5
 
lapply(v,add_choice,choice=10)

[[1]]
[1] 11

[[2]]
[1] 12

[[3]]
[1] 13

[[4]]
[1] 14

[[5]]
[1] 15

sapply(v,add_choice,choice=10)
[1] 11 12 13 14 15
 
lapp<-lapply(v,add_choice,choice=10)
sapp<-sapply(v,add_choice,choice=10)
 
class(lapp)
[1] "list"

class(sapp)
[1] "numeric"

# sapply() limitations
# sapply() not able to automatically return a vector if your applied function doesn't return something for all elements in that vector. 

# EXAMPLE 

even <- function(x) {
  return(x[(x %% 2 == 0)])
} 

nums <- c(1,2,3,4,5)
sapply(nums,even)

[[1]]
numeric(0)

[[2]]
[1] 2

[[3]]
numeric(0)

[[4]]
[1] 4

[[5]]
numeric(0)

lapply(nums,even)
[[1]]
numeric(0)

[[2]]
[1] 2

[[3]]
numeric(0)

[[4]]
[1] 4

[[5]]
numeric(0)

x <- list(a = 1, b = 1:3, c = 10:100)
 
# refer this for better understanding of apply functions 

# https://stackoverflow.com/questions/3505701/grouping-functions-tapply-by-aggregate-and-the-apply-family
# https://mran.microsoft.com/

# tapply() function
 
'tapply() computes a measure (mean, median, min, max, etc..) or a function for each factor 
variable in a vector. It is a very useful function that lets you create a subset of a vector
and then apply some functions to each of the subset.'

data(iris)
tapply(iris$Sepal.Width, iris$Species, median)

setosa versicolor  virginica 
3.4        2.8        3.0  
