
# Data Frame Slicing


days<-c('mon','tue','wed','thu','fri')
temp<-c(22.2,21,23,24.3,25)
rain<-c(T,F,T,F,T)

df<-data.frame(days,temp,rain,stringsAsFactors = F)
df

  days temp  rain
1  mon 22.2  TRUE
2  tue 21.0 FALSE
3  wed 23.0  TRUE
4  thu 24.3 FALSE
5  fri 25.0  TRUE


# We can use the same bracket notation we used for matrices:

# df[rows,columns]

df[1,]   # Everything from first column

df[ ,1] 

df[5,]  # Grab Friday data

# Selecting using column names

# All rain values

df[,'rain']

df[1:5,c('days','temp')] # # First 5 rows for days and temps

df $ days    
df $ rain   # To extract entire columns (vectors) of data

df['days']  # You can also use bracket notation to return a data frame 

df['rain']

'
We can use the subset() function to grab a subset of values from our data frame 
based off some condition. So for example, imagin we wanted to grab the days 
where it rained (rain=True), we can use the subset() function 
'

subset(df,subset=rain==TRUE)

subset(df,subset=temp > 23)

sorted.temp <- order(df['rain'])

df[sorted.temp,]

sorted.temp


# Odering a Data Frame

desc.temp <- order(-df['temp'])  # descending order 

df[desc.temp,]

sort.temp <- order(df$temp) #sorting of data frame

df[sort.temp,]



empty <- data.frame()
empty  # data frame with 0 columns and 0 rows


c1 <- 1:10
c1

# [1]  1  2  3  4  5  6  7  8  9 10

c2 <- letters[1:10]
c2

# [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j"

df <- data.frame(col.name.1=c1,col.name.2=c2)
df

