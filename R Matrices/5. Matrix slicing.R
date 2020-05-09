# Matrix Selection and Indexing
# So the syntax is then:

# example.matrix[rows,columns]

mat <- matrix(1:50,byrow=TRUE,nrow=5)
mat

      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
[1,]    1    2    3    4    5    6    7    8    9    10
[2,]   11   12   13   14   15   16   17   18   19    20
[3,]   21   22   23   24   25   26   27   28   29    30
[4,]   31   32   33   34   35   36   37   38   39    40
[5,]   41   42   43   44   45   46   47   48   49    50

# Grab first row
mat[1,]

# [1]  1  2  3  4  5  6  7  8  9 10

#Grab first column

mat[,1]

# [1]  1 11 21 31 41

# Grab first 3 rows

mat[1:3,]

     [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
[1,]    1    2    3    4    5    6    7    8    9    10
[2,]   11   12   13   14   15   16   17   18   19    20
[3,]   21   22   23   24   25   26   27   28   29    30


# Grab top left rectangle of:
# 1,2,3
# 11,12,13

mat[1:2,1:3]    # first it select 1st 2 rows then 3 colummns till 3

       [,1] [,2] [,3]
[1,]    1    2    3
[2,]   11   12   13

# Grab last two columns

mat[,9:10]

      [,1] [,2]
[1,]    9   10
[2,]   19   20
[3,]   29   30
[4,]   39   40
[5,]   49   50


# Grab a center square of:
# 15,16
# 25,26

mat[2:3,5:6]   # from row 2 and 3 select 5 and 6 column

      [,1] [,2]
[1,]   15   16
[2,]   25   26

# matrix Recycling

gross<-c(1,2,3,4,5,6,
         7,8,9,10,11,12,13) # Matrix Recycling


hp.mat<-matrix(gross,nrow = 8,byrow=T)

hp.mat

    [,1] [,2] [,3] [,4]
[1,]    1    2    3    4
[2,]    5    6    7    8
[3,]    9   10   11   12
[4,]   13    1    2    3

hp.mat[4,2]
[1] 1

hp.mat[4] # It looks for only 6 value
[1] 13

hp.mat[4,]
[1] 13  1  2  3

hp.mat[ ,2] # Calling the entire 6th row because data is one dimensional
[1]  2  6 10  1

hp.snip<-hp.mat[c(1,3,4),]
hp.snip

     [,1] [,2] [,3] [,4]
[1,]    1    2    3    4
[2,]    9   10   11   12
[3,]   13    1    2    3

hp.mat[c(1,2,3),] #here we are doing slicing here we are asking fior 1 3 5 row but when we type ',' (comma) 
# then it will give us row and column as well
 
       [,1] [,2] [,3] [,4]
[1,]    1    2    3    4
[2,]    5    6    7    8
[3,]    9   10   11   12

#now to make easy we will add column name and row name or better understanding

colnames(hp.mat)<-c("usa","India","aus","eng")
hp.mat
 
rownames(hp.mat)<-c('a','b','c','d')
hp.mat

    usa India aus eng
a   1     2   3   4
b   5     6   7   8
c   9    10  11  12
d  13     1   2   3


# here now easy way 

hp.mat["c",]
  
usa India   aus   eng 
9    10    11    12 

hp.mat[ ,"usa"]

a  b  c  d 
1  5  9 13 
 
