# MATRIX

1:10

ma<-1:10
ma

matrix(ma)


# matrix function called nrow which stands for number of rows:

matrix(ma,nrow=2)

# The byrow argument allows you to specify whether or not you want 
# to fill out the matrix by rows or by columns

matrix(1:12,nrow=2,byrow=FALSE)

matrix(1:12,nrow=2,byrow = TRUE )

mrx<-matrix(1:12, nrow=3)
mrx

mrx<-matrix(1:12,ncolumn=4)
mrx              

typeof(mrx)


go<-c(1.1,1.2,1.3,1.4,1.5)
cor<-c(2.1,2.2,2.3,2.4,2.5)

sto<-c(go,cor)
sto

stock<-matrix(sto,byrow = T,nrow=2)
stock

# Naming Matrices

# names() function for vectors, but in this case we define colnames() and rownames().

days<-c('mon','tue','wed','thu','fri')
vc<-c('xo','back')

colnames(stock)<-days
rownames(stock)<-vc
stock

# Another Way

colnames(stock)<-c('a','b','c','d','e')
rownames(stock)<-c('xy','km')
stock

# Matrix Operation We can perform functions across the columns and rows,

colSums(stock)
rowSums(stock)

rowMeans(stock)

# Building columns and Rows

#  we can use the cbind() to bind a new column, 
# rbind() to bind a new row.

fb<-c(111,112,113,114)
tech<-rbind(stock,fb) # Rowbind 
tech

avg<-rowMeans(tech)
avg

usa<-c(1.3,1.5,1.6,1.8,2.0)
usa

de<-c(0.2,0.3,0.4,0.5,0.8)
de

result<-cbind(usa,de) # Column Bind   
result


#Cbind Function which is use to combines vectors as columns,

rownames(result)<-c("2013","2014","2015","2016","2017")
result #rownames which is use to assign new row 


result<-t(result) # Transpose Matrix 
result


ind<-c(2,2.2,2.3,2.5,2.8) #Rbind function  use to combines them as rows.
ngo<-rbind(result,ind)
ngo

?cbind
?rbind


# Matrix Selection and Indexing

# example.matrix[rows,columns]

mat<-matrix(1:50,nrow=5,byrow=T)
mat

mat[1,] # Row Slicing
mat[2,]

mat[ ,1] # Column Slicing
mat[ ,2]

mat[1:3]  # Grab first 3 Columns
mat[1:3,] # Grab first 3 rows

mat[1:2,1:3]
mat[ ,9:10]
mat[1:2,3:4]


chess[ ,1:2]
chess[ ,-2] # column 2 will be remove

# Factor function is use for creating categorical matrices also known as dummy variable


factor.ani<-factor(animal)
factor.ani

'''
We can see that we have two levels, 'd' and 'c'. 
In R there are two distinct types of categorical variables, 
a ordinal categorical variable and a nominal categorical variable .
'''

# Nominal categorical variables don't have any order,
#such as dogs and cats (there is no order to them). 
#Versus Ordinal categorical variables (as the name implies)
#do have an order.

ord.cat<-c("cold","hot","med")
temp<-c('cold','med','hot','cold','hot','med','cold')
fact.temp<-factor(temp,ordered = T,levels = c('cold','met','hot'))
fact.temp


summary(fact.temp)
summary(temp)


col<-c(1,0,1)
ro<-c(0,1,0)

sol<-cbind(col,ro)
sol

rownames(sol)<-c('a','b','c')
sol

main<-t(sol)
main


rb<-c(0,0,1)
demo<-rbind(main,rb)
demo


column<-c(1,2,3)
row<-c(4,5,6)

bind<-cbind(column,row)
bind

rownames(bind)<-c("A","B","C")
bind

transpose<-t(bind)
transpose


# while creating a matrix first 
# we have to create Row,Column
# to join the coluimn we will use cbind
# Then we have to give row names
# after that we have to transpose the matrix
# then if have to create one row then we have to use rbind
# For each time we have to create vector 



row1<-c(10,20,30)
col1<-c(40,50,60)

b1<-cbind(row1,col1)
b1

rownames(b1)<-c("X","y","Z")
b1

tra<-t(b1)
tra


b2<-c(70,80,90)
Res<-rbind(tra,b2)
Res


# Exercise

#First way 

player<-c('dark','dark','dark','dark','light','light','light','light')
piece<-c('king','queen','pawn','pawn','knight','bishop','king','rook')

b1<-cbind(player,piece)
b1


# second way 

play<-c(rep("dark",5),rep("light",5))
# the rep() function repeats a value the stated number of times
# use ?rep for more information

piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
chess <- c(play, piece)

dim(chess) <- c(10, 2)
colnames(chess) <- c("Play", "Piece")
chess


# Third way

player<-c(rep("dark",5),rep("light",5))
piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
chess <- c(player, piece)
dim(chess)<-c(10,2)

chess.mat <- matrix(chess, nrow = 10, dimnames = list(NULL, c("Player", "Piece"))) 

chess.bind<-cbind("player"=player,"piece"=piece)
chess.bind

# Fourth Way

player <- c(rep("dark", 5), rep("light", 5))

# the rep() function repeats a value the stated number of times
# use ?rep for more information

piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")

chess.bind <- cbind("Player" = player, "Piece" = piece)
chess.bind


mat<-matrix(1:40,byrow = T,nrow=5)
mat

# Multiplication

2*mat            

# Division

2/mat

1/mat

# power

mat^2

 