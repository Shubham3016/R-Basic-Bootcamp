v1 <- c(1,2,3)
v1

v2 <- c('a','b','c')
v2

# Indexing works by using brackets and passing the index position of the element as a number. Keep in mind index starts at 1

# Grab second element
v1[2]   # 2
v2[2]   # 'b'

# Multiple Indexing

# We can grab multiple items from a vector by passing a vector of index positions using the square brackets.

v1[c(1,2)]    # 1 2
v2[c(2,3)]    # 'b' 'c'
v2[c(1,3)]    # 'a' 'c'

# Slicing
# we can use a colon (:) to indicate a slice of a vector. 

#  The format is:  # vector[start_index:stop_index]

v <- c(1,2,3,4,5,6,7,8,9,10)

v[2:4]    # (2,3,4)

v[7:10]   # (7 8 9 10)


# Indexing with Names

v <- c(1,2,3,4)
names(v) <- c('a','b','c','d')

# We can use those names along with the indexing brackets to grab individual elements from the array!

v['a']   #  a:1

# we can call out of order!

v[c('a','c','b')]  # 1,3,2

# Comparison Operators and Selection

v[v>2]    # 3 4

v>2    # FALSE FALSE TRUE 

# We could also assign names to these logical vectors and pass them as well, for example:

filter <- v>2
filter         #  FALSE FALSE TRUE TRUE

v[filter]      # 3 4
