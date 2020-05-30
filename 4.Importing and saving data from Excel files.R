
# Excel files are very popular among data analysts. Spreadsheets are easy to work with and flexible. 

# R is equipped with a library readxl to import Excel spreadsheet.

# To do this, we need the readxl package for R. Remember you can download it by using:

install.packages('readxl')

# Load the readxl package

library(readxl)

# list the sheets of the excel file

excel_sheets('D:\\Clustering\\EastWestAirlines.xlsx')

# used read_excel to read excel dataset

df <- read_excel('D:\\Clustering\\EastWestAirlines.xlsx',sheet='Sheet1')

# If you had multiple sheets that you wanted to import into a list, you could do this with lapply():

entire_workbook <- lapply(excel_sheets("D:\\Clustering\\EastWestAirlines.xlsx"), 
                      read_excel, 
                      path = "D:\\Clustering\\EastWestAirlines.xlsx")
