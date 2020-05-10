?read.csv  # help function 

# Reads a file in table format and creates a data frame from it, with cases corresponding to lines and variables to fields in the file.

#-----Method 1 : select file manually

m1<-read.csv(file.choose())
m1

# here we can choose file manually as you run this code one prompt will display from which we can select csv file or any file.



#-----Method 2 : set working directory and Read data

# first we have to set our working directory

getwd() # we will get our working directory

# For WIndows

setwd("C:\\Users\\admin\\OneDrive\\Documents\\R programming")

# For MAc

setwd("Users/admin/Documents/R programming")

# setting dir is different for windows and mac

m2<-read.csv("data.csv")


# as we had set our working directory by which we can readcsv files dont have to set path or anything else.

rm(filename) # here function rm is for removing object from environment




# ------ Method 3 : Give the path of the given csv file 

m3<-read.csv("C:\\Users\\admin\\Documents\\R programming\\data.csv")


# so This is how we can import data in R

