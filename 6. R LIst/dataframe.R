# Dataframe

'
One of the main tools for data analysis with R! Matrix inputs were limited because all the data inside of the matrix 
had to be of the same data type (numerics, logicals, etc). With Dataframes we will be able to organize and mix data types 
to create a very powerful data structure tool!

'
  
data()

datasets::mtcars

# USing Data Frame

data <- mtcars
head(data)
tail(data)


'
We can use the str() to get the structure of a dataframe,which gives information 
on the structure of the dataframe and the data it contains, such as variable names 
and data types.

We can use summary() to get a quick statistical summary of all 
the columns of a DataFrame, depending on the data, this may or may not be useful!

'

str(data) # structure of dataset

summary(data) # sumaary of whole dataset

'
We can create data frames using the data.frame() function and pass vectors as arguments,
which will then convert the vectors into columns of the data frame. 

'

# DataFrame Slicing

# We can use the same bracket notation we used for matrices:

# df[rows,columns]

days<-c('mon','tue','wed','thu','fri')
temp<-c(22.2,21,23,24.3,25)
rain<-c(T,F,T,F,T)

df<-data.frame(days,temp,rain,stringsAsFactors = F)
df

df[1,]

df[ ,1]

df[5,]

df[,'rain']

df[1:5,c('days','temp')]

df $ days # simple way is we can choose $ sign to get column details

df['days']


'
We can use the subset() function to grab a subset of values from our data frame 
based off some condition. So for example, imagin we wanted to grab the days where 
it rained (rain=True), we can use the subset() function as follows:

'

subset(df,subset=rain==TRUE)
subset(df,subset=rain==TRUE)
subset(df,subset=temp>23)

sorted.temp<-order(df['rain'])

df[sorted.temp,]

sorted.temp

desc.temp<-order(-df['temp'])

df[desc.temp,]

sort.temp<-order(df$temp)

df[sort.temp,]

# creating Data Frame

empty<-data.frame()

empty

c1<-1:10

c1

c2<-letters[1:10]


c2

df<-data.frame(col.name.1=c1,col.name.2=c2)

df


# Importing and Exporting Data

#d2<-read.csv('some.file.name.csv')


# For Excel Files
# Load the readxl package

library(readxl)

# Call info from the sheets using read.excel

df <- read_excel('Sample-Sales-Data.xlsx',sheet='Sheet1')

# Output to csv
d2<-read.csv("C:\\Users\\shubh\\OneDrive\\Pictures\\imp.csv")

d2

summary(d2)

write.csv(d2, file='imp.csv')

help('write.csv')

nrow(d2) # Number of Rows 

ncol(d2) # Number of columns

colnames(d2)  # Names of Column

rownames(d2) # Total Rows


# Referencing cells

newdf<-df[1:5,1:2]
newdf

df[1:5 ,1:2]

vec<-df[[5, 2]]
vec

df[[2, 'col.name.1']]<-99994
df


df[5,2]
df[[5,2]]
# Referencing rows

rowdf<-df[1, ]
rowdf

vrow<-as.numeric(as.vector(df[1,]))
vrow


# Referencing Columns
# Most column references return a vector:
  
cars<-mtcars
cars

head(cars)

tail(cars)

colv1<-cars$mpg  #returns a vector
colv1


colv2<-cars[, 'mpg'] # returns a vector
colv2

colv3<-cars[['mpg']] # a is int or string
colv3

colv4<-cars[, 1] # returns a vector
colv4

head(mtcars[c('mpg','cyl')])

# Ways of Returning Data Frames

mgf.g<-cars['mpg'] # returns 1 col df
head(mgf.g)

mgf2.g<-cars[1] # returns 1 col df
head(mgf2.g)

#Adding Rows

# Both arguments are DFs)

df2 <- data.frame(col.name.1=2000,col.name.2='new' )
df2

# use rbind to bind a new row!

dfnew <- rbind(df,df2)



#Adding Columns

df$newcol <- rep(NA, nrow(df)) # NA column
df

df$newcol<-rep(NA, nrow(df))
df

# Copy the column

df[,'copycol']<-df$col.name.2
df

# # Can also use equations!

df[['col.times']]<-df$col.name.1*2
df


df3<-cbind(df,df$col.name.1)
df3


#Setting Column Names

# Rename second column
colnames(df)[2]<-'colname3'

# Rename all at once with a vector
colnames(df) <- c('col.name.1', 'col.name.2', 'newcol', 'copy.of.col2' ,'col1.times.2')
df

# Selecting Multiple Rows

first.ten.rows <- df[1:10, ] # Same as head(df, 10)
first.ten.rows

head(df,10)

row.all<-df[-2,]
row.all


# Conditional Selection

sub1 <- df[ (df$col.name.1 > 8 & df$col1.times.2 > 10), ]
sub1

sub2 <- subset(df, col.name.1 > 8 & col1.times.2 > 10)
sub2



#Selecting Multiple Columns

df[, c(1, 2, 3)] #Grab cols 1 2 3

df[, c('col.name.1', 'col1.times.2')] # by name

df[, -1] # keep all but first column

df[, -c(1, 3)] # drop cols 1 and 3

# Dealing with Missing Data
#Dealing with missing data is a very important skill to know when working with data frames!

any(is.na(df)) # detect anywhere in df

any(is.na(df$col.name.1)) # anywhere in col

# delete selected missing data rows

df <- df[!is.na(df$col), ]

# replace NAs with something else
df[is.na(df)] <- 0 # works on whole df
df$col[is.na(df$col)] <- 999 # For a selected column



## use character columns of names to get sensible sort order
authors <- data.frame(
  surname = I(c("Tukey", "Venables", "Tierney", "Ripley", "McNeil")),
  nationality = c("US", "Australia", "US", "UK", "Australia"),
  deceased = c("yes", rep("no", 4)))



## example of using 'incomparables'
x <- data.frame(k1 = c(NA,NA,3,4,5), k2 = c(1,NA,NA,4,5), data = 1:5)
x

y <- data.frame(k1 = c(NA,2,NA,4,5), k2 = c(NA,NA,3,4,5), data = 1:5)
y

merge(x, y, by = c("k1","k2")) # NA's match
merge(x, y, by = "k1") # NA's match, so 6 rows
merge(x, y, by = "k2", incomparables = NA) # 2 rows




a<-c('a','b','c','d','e','f')

b<-c(1,'NA','NA','3','NA',4)

c<-data.frame(a,b)
c

dim(c)

any(is.na(c))
any(is.na(c$b))
c<- c[!is.na(c$b), ]
c
c[is.na(c$b)]<-2
c

subset(df==TRUE)



write.csv(df,file="save.csv")
df2<-read.csv("save.csv")
df2
