# R Basics functions 

# combine() # create vector

x<-c(2,5,6,7) #combine
x

# Seq() # create sequence

help("seq")

1:10

seq(1,10,by=2)

seq(0,100,by=10)

seq(0,24,by=2)

a<-seq(from=10,to=20,by=3)
a

seq(from=10,to=20,along.with=a)

seq(from=10,to=20,length.out=10)


# rep(): Repeat the numbers

?rep()

m <- rep("hii",3)
m

rep(1:4, c(2,1,2,1))

rep(1:4, each = 1, len = 4)    # first 4 only.

rep(1:4, each = 2, len = 10)    # first 4 only.

# here number 1 2 3 4 will repeat each=2 means each number will genetare 2 times 
# length we had given 10


# sort()


# Sort
# sort() sort a vector

?sort

z<-c(1,4,7,2,13,3,11)
z

sort(z)

sort(z,decreasing = TRUE) # large to small numbers

sort(z,decreasing = FALSE) # small to large numbers

m<-c('b','d','a','c')
sort(m)

cv<-c('a','b','A','B',"C",'f')
cv

sort(cv)

# str(): Show the structure of an object

str(z)
str(m)
str(cv)

str(mtcars) # mt cars dataset structure 

summary(mtcars) # summary of dataset


# REV  reverse Elements in object

?rev()

re<-1:10
re

rev(re)


# append(): Merge objects together (works on vectors and lists)

v<-1:10
v

v2<-35:40

append(v,v2 ) # append the v and v2 together


# Data Types

#is()  Check the class of an R object
# as()  Convert R objects

v<-c(1,2,4)
as.list(v)

as.matrix(v)

as.numeric(v)
 