# For loop

# for loops
'

A for loop is very valuable when we need to iterate over a list of elements or a range of numbers. Loop can be used to iterate over a list, data frame, vector, matrix or any other object. 
The braces and square bracket are compulsory.

The syntax for a for loop is:
  
  for (i in object){
    # Execute some code at every loop
  }
  
'

# Create fruit vector
fruit <- c('Apple', 'Orange', 'Passion fruit', 'Banana')
# Create the for statement
for ( i in fruit){ 
  print(i)
}


vec<-c(1,2,3,4,5)

for(x in vec){
  print(x)
}

# The other way would be to loop a numbered amount of times 
# and then use indexing to continually grab from the vector

for(i in 1:length(vec)){
  print(vec[i])
}

for(i in 1:length(vec)){
  print(i)
}

# For loop over a list

li<- list(1,2,3,4,5)

for (var in li) {
  print(var)
  
}


for (i in 1:length(li)){
  print(li[i])
}

# Create an empty list

list <- c()

# Create a for statement to populate the list

for (i in seq(1, 4, by=1)) {
  list[[i]] <- i*i              # seq->1,2,3,4 ->1*1=1,2*2=4,3*3=9,4*4=16
}

print(list)


# For loop with a matrix

# We can similarly loop through each individual element in a matrix:

mat<-matrix(1:25,nrow=5)
mat

for(num in mat){
  print(num)
}



v<-c(1,2,3,4,5)

for(var in v){
  result<-var+1
  print('The value is equal to')
  print(result)
}


v<-c(1,2,3,4,5)

for(a in v){
  print('hello')
}


mylist<-list(c(1,2,3),mtcars,12)

for(item in mylist){
  print(item)
}

# Nested loop

mat <- matrix(1:25,nrow=5)
mat

for (row in 1:nrow(mat)){
  for(col in 1:ncol(mat)){
    print(paste('The element at row:',row,'and col:',col,'is',mat[row,col]))
  }
}


