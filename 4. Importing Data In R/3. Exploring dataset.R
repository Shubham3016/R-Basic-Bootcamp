# Exploring Data into R
'''
Exploring and understanding data

After collecting data and loading it into R data structures, the next step involves examining the data in detail. 
The better you understand your data, the better you will be able to match a machine learning model to your learning problem.
'''

# R have by default the datasets which can be display using following datset

datasets::cars

   speed dist
1      4    2
2      4   10
3      7    4
4      7   22
5      8   16
6      9   10
7     10   18
8     10   26
9     10   34
10    11   17
11    11   28
12    12   14
13    12   20
14    12   24
15    12   28
16    13   26
17    13   34
18    13   34
19    13   46
20    14   26
21    14   36
22    14   60
23    14   80
24    15   20
25    15   26
26    15   54
27    16   32
28    16   40
29    17   32
30    17   40
31    17   50
32    18   42
33    18   56
34    18   76
35    18   84
36    19   36
37    19   46
38    19   68
39    20   32
40    20   48
41    20   52
42    20   56
43    20   64
44    22   66
45    23   54
46    24   70
47    24   92
48    24   93
49    24  120
50    25   85

nrow(cars)
[1] 50

ncol(cars)
[1] 2

head(cars)

    speed dist
1     4    2
2     4   10
3     7    4
4     7   22
5     8   16
6     9   10

tail(cars)
 
    speed dist
45    23   54
46    24   70
47    24   92
48    24   93
49    24  120
50    25   85

head(cars,n=10)

    speed dist
1      4    2
2      4   10
3      7    4
4      7   22
5      8   16
6      9   10
7     10   18
8     10   26
9     10   34
10    11   17

str(cars)

'data.frame':	50 obs. of  2 variables:
 $ speed: num  4 4 7 7 8 9 10 10 10 11 ...
 $ dist : num  2 10 4 22 16 10 18 26 34 17 ...

'''
The statement 50 obs tells us that the data includes 50 observations, The number of observations is often simply abbreviated as n.
n = 50 which means 50 rows are there

The 2 variables statement tells us that the data includes 2 columns
'''

summary(cars)

    speed           dist  

 Min.   : 4.0   Min.   :  2.00  
 1st Qu.:12.0   1st Qu.: 26.00  
 Median :15.0   Median : 36.00  
 Mean   :15.4   Mean   : 42.98  
 3rd Qu.:19.0   3rd Qu.: 56.00  
 Max.   :25.0   Max.   :120.00  

?summary
