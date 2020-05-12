# Dataframe
'
One of the main tools for data analysis with R! Matrix inputs were limited because all the data inside of the matrix 
had to be of the same data type (numerics, logicals, etc). With Dataframes we will be able to organize and mix data types 
to create a very powerful data structure tool!
'

data()

datasets::mtcars
'
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
'

# USing Data Frame

data <- mtcars

head(data)

'                  mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
'

tail(data)

'                mpg cyl  disp  hp drat    wt qsec vs am gear carb
Porsche 914-2  26.0   4 120.3  91 4.43 2.140 16.7  0  1    5    2
Lotus Europa   30.4   4  95.1 113 3.77 1.513 16.9  1  1    5    2
Ford Pantera L 15.8   8 351.0 264 4.22 3.170 14.5  0  1    5    4
Ferrari Dino   19.7   6 145.0 175 3.62 2.770 15.5  0  1    5    6
Maserati Bora  15.0   8 301.0 335 3.54 3.570 14.6  0  1    5    8
Volvo 142E     21.4   4 121.0 109 4.11 2.780 18.6  1  1    4    2
'

'
We can use the str() to get the structure of a dataframe,which gives information  on the structure of the dataframe 
and the data it contains, such as variable names and data types.
'

str(data)     # structure of dataset

'
data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
'


# We can use summary() to get a quick statistical summary of all  the columns of a DataFrame, depending on the data, 
# this may or may not be useful!

'
summary(data) # sumaary of whole dataset
'
      mpg             cyl             disp             hp             drat      
 Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0   Min.   :2.760  
 1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5   1st Qu.:3.080  
 Median :19.20   Median :6.000   Median :196.3   Median :123.0   Median :3.695  
 Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7   Mean   :3.597  
 3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0   3rd Qu.:3.920  
 Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0   Max.   :4.930  
       wt             qsec             vs               am              gear      
 Min.   :1.513   Min.   :14.50   Min.   :0.0000   Min.   :0.0000   Min.   :3.000  
 1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:3.000  
 Median :3.325   Median :17.71   Median :0.0000   Median :0.0000   Median :4.000  
 Mean   :3.217   Mean   :17.85   Mean   :0.4375   Mean   :0.4062   Mean   :3.688  
 3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:4.000  
 Max.   :5.424   Max.   :22.90   Max.   :1.0000   Max.   :1.0000   Max.   :5.000  
      carb      
 Min.   :1.000  
 1st Qu.:2.000  
 Median :2.000  
 Mean   :2.812  
 3rd Qu.:4.000  
 Max.   :8.000  
'

'
We can create data frames using the data.frame() function and pass vectors as arguments,
which will then convert the vectors into columns of the data frame. 
'

days<-c('mon','tue','wed','thu','fri')
temp<-c(22.2,21,23,24.3,25)
rain<-c(T,F,T,F,T)

df<-data.frame(days,temp,rain,stringsAsFactors = F)
df

'
  days temp  rain
1  mon 22.2  TRUE
2  tue 21.0 FALSE
3  wed 23.0  TRUE
4  thu 24.3 FALSE
5  fri 25.0  TRUE

'

df[1,]

  days temp rain
1  mon 22.2 TRUE


df[ ,1]

# [1] "mon" "tue" "wed" "thu" "fri"

df[5,]

  days temp rain
5  fri   25 TRUE


df[,'rain']

[1]  TRUE FALSE  TRUE FALSE  TRUE


df[1:5,c('days','temp')]

  days temp
1  mon 22.2
2  tue 21.0
3  wed 23.0
4  thu 24.3
5  fri 25.0


df $ days          # simple way is we can choose $ sign to get column details

[1] "mon" "tue" "wed" "thu" "fri"


df['days']

  days
1  mon
2  tue
3  wed
4  thu
5  fri

 '
We can use the subset() function to grab a subset of values from our data frame 
based off some condition. So for example, imagin we wanted to grab the days 
where it rained (rain=True), we can use the subset() function 
'

subset(df,subset=rain==TRUE)

  days temp rain
1  mon 22.2 TRUE
3  wed 23.0 TRUE
5  fri 25.0 TRUE


subset(df,subset=temp > 23)

  days temp  rain
4  thu 24.3 FALSE
5  fri 25.0  TRUE



sorted.temp <- order(df['rain'])

df[sorted.temp,]

  days temp  rain
2  tue 21.0 FALSE
4  thu 24.3 FALSE
1  mon 22.2  TRUE
3  wed 23.0  TRUE
5  fri 25.0  TRUE


sorted.temp

[1] 2 4 1 3 5


desc.temp <- order(-df['temp'])  # descending order 

df[desc.temp,]

  days temp  rain
5  fri 25.0  TRUE
4  thu 24.3 FALSE
3  wed 23.0  TRUE
1  mon 22.2  TRUE
2  tue 21.0 FALSE


sort.temp <- order(df$temp) #sorting of data frame

df[sort.temp,]

  days temp  rain
2  tue 21.0 FALSE
1  mon 22.2  TRUE
3  wed 23.0  TRUE
4  thu 24.3 FALSE
5  fri 25.0  TRUE

# creating Data Frame

empty <- data.frame()
empty

# data frame with 0 columns and 0 rows


c1 <- 1:10

c1

# [1]  1  2  3  4  5  6  7  8  9 10

c2 <- letters[1:10]
c2

# [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j"

df <- data.frame(col.name.1=c1,col.name.2=c2)
df

   col.name.1 col.name.2
1           1          a
2           2          b
3           3          c
4           4          d
5           5          e
6           6          f
7           7          g
8           8          h
9           9          i
10         10          j
