# Regular Expressions

# Regular expressions is a general term which covers the idea of pattern searching, typically in a string (or a vector of strings).

# grepl(), which returns a logical indicating if the given word is found

# grep(), which returns a vector of index locations of matching pattern instances

text <- "Hi there, do you know who you are voting for?"

?grep

grepl('voting',text)   # in the above text variable word voting is present so it will return TRUE
# [1] TRUE

grepl('bob',text)      # in the above text variable word bob is not present so it will return FALSE
# [1] FALSE

v <- c('a','b','c','d')
v
# [1] "a" "b" "c" "d"
 
grep('a',v)
# [1] 1

grep('q',v)
# integer(0)
 
