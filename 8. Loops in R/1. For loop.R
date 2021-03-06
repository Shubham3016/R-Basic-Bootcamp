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

[1] "Apple"
[1] "Orange"
[1] "Passion fruit"
[1] "Banana"

vec<-c(1,2,3,4,5)
 
for(x in vec){
  print(x)
}

[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
 
# The other way would be to loop a numbered amount of times and then use indexing to continually grab from the vector

for(i in 1:length(vec)){
  print(vec[i])
}

[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
 
for(i in 1:length(vec)){
  print(i)
}

[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
 
# For loop over a list
 
li<- list(1,2,3,4,5)
for (var in li) {
  print(var)
}

[1] 1
[1] 2
[1] 3
[1] 4
[1] 5

for (i in 1:length(li)){
  print(li[i])
}
[[1]]
[1] 1

[[1]]
[1] 2

[[1]]
[1] 3

[[1]]
[1] 4

[[1]]
[1] 5
 

# Create an empty list
 
list <- c()

# Create a for statement to populate the list
 
for (i in seq(1, 4, by=1)) {
  list[[i]] <- i*i              # seq->1,2,3,4 ->1*1=1,2*2=4,3*3=9,4*4=16
}

print(list)
[[1]]
[1] 1

[[2]]
[1] 4

[[3]]
[1] 9

[[4]]
[1] 16

# For loop with a matrix
 
# We can similarly loop through each individual element in a matrix: 

mat<-matrix(1:25,nrow=5)
mat
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    6   11   16   21
[2,]    2    7   12   17   22
[3,]    3    8   13   18   23
[4,]    4    9   14   19   24
[5,]    5   10   15   20   25
 
for(num in mat){
  print(num)
}
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
[1] 22
[1] 23
[1] 24
[1] 25


v<-c(1,2,3,4,5)

for(var in v){
  result<-var+1
  print('The value is equal to')
  print(result)
}

[1] "The value is equal to"
[1] 2
[1] "The value is equal to"
[1] 3
[1] "The value is equal to"
[1] 4
[1] "The value is equal to"
[1] 5
[1] "The value is equal to"
[1] 6

v<-c(1,2,3,4,5)

for(a in v){
  print('hello')
}

[1] "hello"
[1] "hello"
[1] "hello"
[1] "hello"
[1] "hello"
 
mylist<-list(c(1,2,3),mtcars,12)
 
for(item in mylist){
  print(item)
}

[1] 1 2 3
                     mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Mazda RX4           21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag       21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
Datsun 710          22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout   18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
Valiant             18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
Duster 360          14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
Merc 240D           24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
Merc 230            22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
Merc 280            19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
Merc 280C           17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
Merc 450SE          16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3
Merc 450SL          17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
Merc 450SLC         15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3
Cadillac Fleetwood  10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
Lincoln Continental 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4
Chrysler Imperial   14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
Fiat 128            32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
Honda Civic         30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
Toyota Corolla      33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
Toyota Corona       21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
Dodge Challenger    15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2
AMC Javelin         15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
Camaro Z28          13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
Pontiac Firebird    19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
Fiat X1-9           27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
Porsche 914-2       26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
Lotus Europa        30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
Ford Pantera L      15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
Ferrari Dino        19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6
Maserati Bora       15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8
Volvo 142E          21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2

[1] 12

# Nested loop
 
mat <- matrix(1:25,nrow=5)
mat
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    6   11   16   21
[2,]    2    7   12   17   22
[3,]    3    8   13   18   23
[4,]    4    9   14   19   24
[5,]    5   10   15   20   25
 
for (row in 1:nrow(mat)){
  for(col in 1:ncol(mat)){
    print(paste('The element at row:',row,'and col:',col,'is',mat[row,col]))
}
}

[1] "The element at row: 1 and col: 1 is 1"
[1] "The element at row: 1 and col: 2 is 6"
[1] "The element at row: 1 and col: 3 is 11"
[1] "The element at row: 1 and col: 4 is 16"
[1] "The element at row: 1 and col: 5 is 21"
[1] "The element at row: 2 and col: 1 is 2"
[1] "The element at row: 2 and col: 2 is 7"
[1] "The element at row: 2 and col: 3 is 12"
[1] "The element at row: 2 and col: 4 is 17"
[1] "The element at row: 2 and col: 5 is 22"
[1] "The element at row: 3 and col: 1 is 3"
[1] "The element at row: 3 and col: 2 is 8"
[1] "The element at row: 3 and col: 3 is 13"
[1] "The element at row: 3 and col: 4 is 18"
[1] "The element at row: 3 and col: 5 is 23"
[1] "The element at row: 4 and col: 1 is 4"
[1] "The element at row: 4 and col: 2 is 9"
[1] "The element at row: 4 and col: 3 is 14"
[1] "The element at row: 4 and col: 4 is 19"
[1] "The element at row: 4 and col: 5 is 24"
[1] "The element at row: 5 and col: 1 is 5"
[1] "The element at row: 5 and col: 2 is 10"
[1] "The element at row: 5 and col: 3 is 15"
[1] "The element at row: 5 and col: 4 is 20"
[1] "The element at row: 5 and col: 5 is 25
