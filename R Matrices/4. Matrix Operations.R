total<-c(m1,m2)
mtotal <- matrix(total,byrow=TRUE,nrow=2)
mtotal

colnames(mtotal)<-c('a','b','c','d','e')
rownames(mtotal)<-c('x','y')
mtotal

colSums(mtotal)   # column of row

rowSums(mtotal)   # Sum of row

rowMeans(mtotal)  # Mean of row

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


?cbind
?rbind

