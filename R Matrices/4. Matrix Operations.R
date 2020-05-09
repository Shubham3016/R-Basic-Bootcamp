# Matric Basic Operation

total<-c(m1,m2)
mtotal <- matrix(total,byrow=TRUE,nrow=2)
mtotal

     [,1] [,2] [,3] [,4] [,5]
[1,]    4    1    2    5    8
[2,]    2    1    3    6    7


colnames(mtotal)<-c('a','b','c','d','e')
rownames(mtotal)<-c('x','y')
mtotal

  a b c d e
x 4 1 2 5 8
y 2 1 3 6 7

colSums(mtotal)   # column of row

 a  b  c  d  e 
 6  2  5 11 15

rowSums(mtotal)   # Sum of row

 x  y 
20 19 

rowMeans(mtotal)  # Mean of row
  x   y 
4.0 3.8 

# Building columns and Rows

# we can use the cbind() to bind a new column, 
# rbind() to bind a new row.

fb<-c(111,112,113,114)
tech<-rbind(stock,fb) # Rowbind 
tech

       a     b     c     d     e
xy   1.1   1.2   1.3   1.4   1.5
km   2.1   2.2   2.3   2.4   2.5
fb 111.0 112.0 113.0 114.0 111.0



avg<-rowMeans(tech)
avg

   xy    km    fb 
  1.3   2.3 112.2 
 

usa<-c(1.3,1.5,1.6,1.8,2.0)
usa

[1] 1.3 1.5 1.6 1.8 2.0


de<-c(0.2,0.3,0.4,0.5,0.8)
de

[1] 0.2 0.3 0.4 0.5 0.8


result<-cbind(usa,de) # Column Bind   
result

     usa  de
[1,] 1.3 0.2
[2,] 1.5 0.3
[3,] 1.6 0.4
[4,] 1.8 0.5
[5,] 2.0 0.8
 
?cbind  # help function
?rbind
