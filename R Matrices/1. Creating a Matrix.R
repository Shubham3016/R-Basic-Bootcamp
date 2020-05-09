 # MATRIX
 
# A matrix will allow us to have a 2-dimensional data structure which contains elements consisting of the same data type.

1:10   

[1]  1  2  3  4  5  6  7  8  9 10

ma<-1:10  # here we assign the value ma 
ma

[1]  1  2  3  4  5  6  7  8  9 10

matrix(ma) # use the Matrix function

      [,1]
 [1,]    1
 [2,]    2
 [3,]    3
 [4,]    4
 [5,]    5
 [6,]    6
 [7,]    7
 [8,]    8
 [9,]    9
[10,]   10

# matrix function called nrow which stands for number of rows:

matrix(ma,nrow=2)

      [,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10

# To fill out the matrix by rows or by columns

matrix(1:12,nrow=2,byrow=FALSE)

     [,1] [,2] [,3] [,4] [,5] [,6]
[1,]    1    3    5    7    9   11
[2,]    2    4    6    8   10   12

# The byrow argument allows you to specify whether or not you want to fill out the matrix by rows or by columns. 
  
matrix(1:12,nrow=2,byrow = TRUE)

     [,1] [,2] [,3] [,4] [,5] [,6]
[1,]    1    2    3    4    5    6
[2,]    7    8    9   10   11   12

mrx<-matrix(1:12, nrow=3)
mrx

      [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12

typeof(mrx)  

[1] "integer"

class(mrx)  

[1] "matrix" "array" 
        
go<-c(1.1,1.2,1.3,1.4,1.5)
cor<-c(2.1,2.2,2.3,2.4,2.5)
sto<-c(go,cor)
sto

[1] 1.1 1.2 1.3 1.4 1.5 2.1 2.2 2.3 2.4 2.5
  
stock<-matrix(sto,byrow = T,nrow=2)
stock

      [,1] [,2] [,3] [,4] [,5]
[1,]  1.1  1.2  1.3  1.4  1.5
[2,]  2.1  2.2  2.3  2.4  2.5
   
# Naming Matrices
       
# names() function for vectors, but in this case we define colnames() and rownames().
        
days<-c('mon','tue','wed','thu','fri')
vc<-c('xo','back')

colnames(stock)<-days
rownames(stock)<-vc
stock
     mon tue wed thu fri
xo   1.1 1.2 1.3 1.4 1.5
back 2.1 2.2 2.3 2.4 2.5
       
# Another Way

colnames(stock)<-c('a','b','c','d','e')
rownames(stock)<-c('xy','km')
stock

    a   b   c   d   e
xy 1.1 1.2 1.3 1.4 1.5
km 2.1 2.2 2.3 2.4 2.5
     
# Matrix Operation We can perform functions across the columns and rows,

colSums(stock)
 a   b   c   d   e 
3.2 3.4 3.6 3.8 4.0 
 
rowSums(stock)
  xy   km 
 6.5 11.5 
 
rowMeans(stock)

xy  km 
1.3 2.3 

