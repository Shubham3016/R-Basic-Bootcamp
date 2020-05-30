# Packages in R'

'
A package is a collection of R functions, data, and compiled code 
in a well-defined format. Packages are being stored in the directory 
called the library. R comes with a standard set of packages.
With the help of the search() command, 
'

# you can find all the list of available packages that are installed in your system.
# We can observe an example of search() command as follows:
search()

# To see what packages are available, you need to type the following command:
  
installed.packages()

# How to Install R Packages for Windows

'
In Windows, you get the package menu and install option which is very easy.
After selecting a local mirror site, a list of available binary packages is 
being shown.You can choose the ones you need.Once you have selected the packages 
you need, you need to click the OK button to download and install them into R.'

# Use the following command to install any package:

# install.packages("package name")

install.packages("dplyr")

# How to Use Packages in R

# We need to load the package in R after installing them to make them usable.

# To load the R language Package, you can use the library() command, as follows:

# library(package name)

library(dplyr)
