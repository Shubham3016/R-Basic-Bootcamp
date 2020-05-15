# Factor and Categorical Matrices

# factor() function and its use for creating categorical matrices. 
# This specific function will become extremely useful when we begin to apply data analysis and machine learning techniques to our data,
# this idea is sometimes also known as creating dummy variables.

a <- c('d','c','d','c','c')
id <- c(1,2,3,4,5)

# we want to convert the animal vector into information that an algorithm or equation can understand more easily. 
# Meaning we want to start to check how many categories (factor levels) are in our character vector.

factor.ani <- factor(a)
factor.ani 

[1] d c d c c
Levels: c d

# We can see that we have two levels, 'c' and 'd'. 
# In R there are two types of categorical variables, a ordinal categorical variable and a nominal categorical variable.
 
# for Better understanding of categorical variable refer the below link
# https://www.statisticshowto.com/nominal-ordinal-interval-ratio/

ord.cat <- c('cold','med','hot')

# cold < med < hot  # order from cold to hot

# if you wanted to assign an order while using the factor() function, 
# pass the arguments ordered=True and the pass in the levels= and pass in a vector

times.of.day <- c('morning','afternoon','morning','afternoon','night','evening' ,'night')
time <- factor(times.of.day,ordered=TRUE,levels=c('morning','afternoon','evening','night'))
time

[1] morning   afternoon morning   afternoon night     evening   night    
    Levels: morning < afternoon < evening < night
     

summary(times.of.day)

 Length     Class       Mode 
   7       character  character 

summary(time)

morning    afternoon   evening     night 
   2          2          1           2 
