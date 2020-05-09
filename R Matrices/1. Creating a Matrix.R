# MATRIX

# A matrix will allow us to have a 2-dimensional data structure which contains elements consisting of the same data type.

1:10   # 1,2,3,4,5,6,7,8,9,10

ma<-1:10  # here we assign the value ma 
ma

matrix(ma) # use the Matrix function

# matrix function called nrow which stands for number of rows:
        
matrix(ma,nrow=2)

# To fill out the matrix by rows or by columns

matrix(1:12,nrow=2,byrow=FALSE
# The byrow argument allows you to specify whether or not you want to fill out the matrix by rows or by columns. 

matrix(1:12,nrow=2,byrow = TRUE )

mrx<-matrix(1:12, nrow=3)
mrx

typeof(mrx)  
class(mrx)  

go<-c(1.1,1.2,1.3,1.4,1.5)
cor<-c(2.1,2.2,2.3,2.4,2.5)

sto<-c(go,cor)
sto

stock<-matrix(sto,byrow = T,nrow=2)
stock

# Naming Matrices

# names() function for vectors, but in this case we define colnames() and rownames().

days<-c('mon','tue','wed','thu','fri')
vc<-c('xo','back')

colnames(stock)<-days
rownames(stock)<-vc
stock

# Another Way

colnames(stock)<-c('a','b','c','d','e')
rownames(stock)<-c('xy','km')
stock

# Matrix Operation We can perform functions across the columns and rows,

colSums(stock)
rowSums(stock)

rowMeans(stock)

