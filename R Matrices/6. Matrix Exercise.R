
# Ex 1: Create 2 vectors A and B, where A is (1,2,3) and B is (4,5,6). With these vectors,
# use the cbind() or rbind() function to create a 2 by 3 matrix from the vectors.

a<-c(1,2,3)
b<-c(4,5,6)
d<-c(a,b)

ma<-matrix(d,nrow=2,byrow = T)
ma
colnames(ma)<-c('x','y','z')
rownames(ma)<-c('a','b')
ma

# Easy way to 
q<-c(1,2,3)
e<-c(4,5,6)
z<-rbind(a,b)
z

# Ex 2: Create a 3 by 3 matrix consisting of the numbers 1-9.
# Create this matrix using the shortcut 1:9 and by specifying the nrow argument 
# in the matrix() function call.

mat<-matrix(1:9,nrow=2,byrow = T)
mat

# Ex 3: Confirm that mat is a matrix using is.matrix()

class(mat)
is.matrix(mat)

# Ex 4: Create a 5 by 5 matrix consisting of the numbers 1-25 and assign it to the variable mat2. 
# The top row should be the numbers 1-5.

mat2<-matrix(1:25,nrow=5,byrow = T)
mat2

# Ex 5: Using indexing notation, grab a sub-section of mat2 from the previous exercise that looks like this:
# [7,8]
# [12,13]

mat2[2:3,2:3]
mat2[2,2:3]
mat3[3,2:3]

# Ex 6: Using indexing notation, grab a sub-section of mat2 from the previous exercise that looks like this:

mat2[4:5,4:5]

mat2[4,4:5]
mat2[5,4:5]

# Ex 7: What is the sum of all the elements in mat2?

sum(mat2)
?runif

u<-runif(20)
u

runmat<-matrix(runif(20,min=0,max=100),nrow=4)

runmat

ranmat <- matrix(runif(20,min=0,max=100),nrow = 4)
ranmat
