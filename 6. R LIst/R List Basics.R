# List

v<-c(1,2,3,4,5)  # create a vector V
v

m<-matrix(1:10,nrow=2) # create a Matrix
m

data <- Pottery   # dataset of pottery which is by default in R studio                 
data

# Using List

# create a list using li function

li<-list(v,m,data)
li

li[1]   # list slicing using index
li[[1]] 

# Giving names to the List

li<-list(sample.vec=v,sample.mat=m,sample.data=data)
li     

li[1]
li[[1]]
li$sample_vec  # we can use $ symbol
li['sample_vec']

class(li['sample_vec']) # TO know the data type

li[['sample_vec']][2] # In sample vector 2nd va;lue of row

li$sample_mat[2,] # In sample matrix

li$sample_mat[1:2,1:2] # first two rows and first two column

li$sample_mat[ ,2]

# combining list

double_list<-c(li,li)
double_list

str(double_list)
