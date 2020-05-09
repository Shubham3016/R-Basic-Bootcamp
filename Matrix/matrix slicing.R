




gdp<-matrix(c(47.9,45.5,2,3.1,3.2,2,2.5,2.9,5),
            nrow=3,byrow=TRUE,
            dimnames=list(c("de","usa","ind"),
                          c("2014","2018","2019")))

gdp

exe<-matrix()

gross<-c(1,2,3,4,5,6,
         7,8,9,10,11,12,13) # Matrix Recycling


hp.mat<-matrix(gross,nrow = 8,byrow=T)

hp.mat
hp.mat[6,2]
hp.mat[6] # It looks for only 6 value
hp.mat[6,]
hp.mat[ ,2] # Calling the entire 6th row because data is one dimensional
hp.snip<-hp.mat[c(1,3,7),]
hp.snip

hp.mat[c(1,2,3),] #here we are doing slicing here we are asking fior 1 3 5 row but when we type ',' (comma) then it will give us row and column as well

#now to make easy we will add column name and row name or better understanding

colnames(hp.mat)<-c("usa","India")
hp.mat

rownames(hp.mat)<-c('a','b','c','d','e','f','g','h')
hp.mat


#here now easy way 
hp.mat["c",]
hp.mat[ ,"usa"]



chess.t <- t(chess)
turn <- c(3, 5, 2, 2, 7, 4, 6, 5, 2, 1)

chess.t <- rbind(chess.t, "Turn" = turn)
chess <- t(chess.t)

chess


# Requirements: the chess object from the previous exercise.

play<-c(rep("dark",5),rep("light",5))
# the rep() function repeats a value the stated number of times
# use ?rep for more information

piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
chess <- c(play, piece)

dim(chess) <- c(10, 2)
colnames(chess) <- c("Play", "Piece")
chess





# Transpose the chess matrix, and add a row storing the following values: 3, 5, 2, 2, 7, 4, 6, 5, 2, 1

chess.t <- t(chess)
turn <- c(3, 5, 2, 2, 7, 4, 6, 5, 2, 1)

# Name the row "Turn" and transpose the matrix back to its original orientation.


chess.t <- rbind(chess.t, "Turn" = turn)
chess <- t(chess.t)

# Extract the following values from the chess matrix:
  
#The first piece of the light player

chess[6,2]

#The Player and Piece columns

chess[, c("Play", "Piece")]

#All the information about the dark player

chess[1:5, ]

#The Pieces column; try to extract that as a matrix (Hint: lookup the drop = argument)
chess[, 2, drop=F]

#Everything but the Piece column
chess[ ,-2]

#The 1st and 3rd values on the second row
chess[2,c(1,3)]


#Replace the 3rd value on the 7th row with 3 (Hint: works just like creating an object)

chess[7, 3] <- 3
chess[7, 3]
