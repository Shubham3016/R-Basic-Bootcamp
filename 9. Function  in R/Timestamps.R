# Timestamps

# R gives us a variety of tools for working with timestamp information. 

# Dates
# You can use the as.Date() function to convert a character string to a Date object,
# which will allow it to contain more time information. The string will need to be in a standard time format. 

Sys.Date() # today's date by asking the system (Sys.) for the Date:'

# [1] "2020-06-05"

# Set as a variable

today<-Sys.Date()
today

#[1] "2020-06-05"
'
Code  	Value
%d	    Day of the month (decimal number)
%m	    Month (decimal number)
%b	    Month (abbreviated)
%B	    Month (full name)
%y	    Year (2 digit)
%Y	    Year (4 digit)
'
# YYYY-MM-DD

as.Date('1990-11-07')
# [1] "1990-11-07"

# Using Format

as.Date("NOv-03-90",format='%b-%d-%y')
# [1] "1990-11-03"

# Using Format

as.Date("November-03-1990",format="%B-%d-%Y")
# [1] "1990-11-03"

help(strptime)
 
strptime("11:02:03",format="%H:%M:%S")
# [1] "2020-06-05 11:02:03 IST"
