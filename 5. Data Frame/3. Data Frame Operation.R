
# Overview of Data Frame Operations

c1 <- 1:10     # [1]  1  2  3  4  5  6  7  8  9 10
c1

c2 <- letters[1:10]  # [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j"
c2

df <- data.frame(col1=c1,col2=c2)
df

'
    col1 col2
1     1    a
2     2    b
3     3    c
4     4    d
5     5    e
6     6    f
7     7    g
8     8    h
9     9    i
10   10    j
'

new <- df[1:8,1:2]
new

df[1:5 ,1:2]

vec1 <- df[[5, 2]]
vec1

vec2 <- df[5,2]
vec2

df[[2, 'col1']] <- 957
df

df[4,'col1'] <- 545
df

df[5,2]

df[[5,2]]

# rows opeartion

rowdf <- df[1, ]
rowdf

vrow <- as.numeric(as.vector(df[1,]))
vrow


# column Operations

cars <- mtcars
cars

head(cars)

tail(cars)

colv1 <- cars$mpg  #returns a vector
colv1


colv2 <- cars[, 'mpg'] # returns a vector
colv2

colv3 <- cars[['mpg']] # a is int or string
colv3

colv4 <- cars[, 1] # returns a vector
colv4

head(mtcars[c('mpg','cyl')])

# Ways of Returning Data Frames

mgf1<-cars['mpg'] # returns 1 col df
head(mgf1)

mgf2<-cars[1] # returns 1 col df
head(mgf2)

# Adding Rows

# Both arguments are DFs)

df2 <- data.frame(col1=2000,col2='new' )
df2

# use rbind to bind a new row!

dfnew <- rbind(df,df2)
dfnew


#Adding Columns

df$newcol <- rep(NA, nrow(df)) # NA column
df


# Copy the column

df[,'copingcolumn'] <- df$col2
df

# Can also use equations!

df[['colnew']]<-df$col1*2
df


df3 <- cbind(df,df$col1)
df3


# Setting Column Names

# Rename second column

colnames(df)[2]<-'colname3'
df

# Rename all at once with a vector

colnames(df) <- c('col1', 'col2', 'newcol', 'copingcolumn' ,'colnew')
df

# Selecting Multiple Rows

first.ten.rows <- df[1:10, ] # Same as head(df, 10)
first.ten.rows

head(df,10)

row.all<-df[-2,] # All rows but not row 2
row.all


# Conditional Selection

sub1 <- df[ (df$col1 > 8 & df$colnew > 10), ]
sub1


#Selecting Multiple Columns

df[, c(1, 2, 3)] #Grab cols 1 2 3

df[, c('col1', 'col2')] # by name

df[, -1] # keep all but not first column

df[, -c(1, 3)] # drop cols 1 and 3


# this is what overview of Data Frame
