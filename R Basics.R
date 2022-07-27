#########################
#-->Required Packages<--#
#########################
require(lubridate)
require(readxl)
require(Hmisc)
require(dplyr)

#******************************************************************************#
#1.	Use R code to get a description of the version of R and its attached 
#   packages used in the current session?
version
search()

#******************************************************************************#
#2. Use R code to get a description of the version of R and its attached packages 
#   used in the current session?
Installed <- as.data.frame(installed.packages(), row.names = NULL)
Installed <- Installed[,c('Package','Version')]

#******************************************************************************#
#3.	Create an object with the following data types and check their data types
#   by using the class function after creation
#   a.	integer
#   b.	numeric
#   c.	character
#   d.	logical
#   e.	complex

Obj_int <- as.integer(25.61)
obj_num <- 30
obj_char <- 'STRING'
obj_log <- Obj_int != obj_num
obj_comp <- 1.5 + 2i

class(Obj_int)
class(obj_num)
class(obj_char)
class(obj_log)
class(obj_comp)

#******************************************************************************#
#4.	Create the following objects:
#   object_1 <- "my_text"
#   object_2 <- "123.456"
#   object_3 <- 123.456
#   object_4 <- 0
#   object_4 <- FALSE
#   Perform type casting on each of the object. (Convert each of the objects into 
#   different available data types and analyze the results).
object_1 <- 'y_text'
object_2 <- '123.456'
object_3 <- 123.456
object_4 <- 0
object_5 <- FALSE

# Numeric
as.numeric(object_1)
as.numeric(object_2)
as.numeric(object_3)
as.numeric(object_4)
as.numeric(object_5)

#integer
as.integer(object_1)
as.integer(object_2)
as.integer(object_3)
as.integer(object_4)
as.integer(object_5)

#Character
as.character(object_1)
as.character(object_2)
as.character(object_3)
as.character(object_4)
as.character(object_5)

#Logical
as.logical(object_1)
as.logical(object_2)
as.logical(object_3)
as.logical(object_4)
as.logical(object_5)

#Complex
as.complex(object_1)
as.complex(object_2)
as.complex(object_3)
as.complex(object_4)
as.complex(object_5)

#******************************************************************************#
#5.	List all the objects in the current session.
ls()

#******************************************************************************#
#6.	Convert the data "1/December/1998" into a Date type.
date_inp <- '1/December/1998'
date_out <- as.Date(date_inp,format='%d/%B/%Y')

#******************************************************************************#
#7.	Find the number of years from the Independence of India till present.
today <- Sys.Date()
Independence <- as.Date('1947/08/15',format = '%Y/%m/%d')
Days_from_independence <- as.numeric(difftime(today,Independence,units='days')/30/12)
Days_from_independence

#******************************************************************************#
#8. Convert the following text into a Date format:
#   "On the 16th of December the hostilities between the two countries ended and
#   a new nation was formed in the winter of 1971" (Hint: Use lubridate)
date_inp2 <- 'On the 16th of December the hostilities between the two countries 
ended and a new nation was formed in the winter of 1971'
date_out2 <- lubridate::dmy(date_inp2)

#******************************************************************************#
#9.	Convert the string "December-31-2018" to a date format and extract the month.
#   (Hint: use lubridate)
date_inp3 <- 'December-31-2018'
date_out3 <- months(lubridate::mdy(date_inp3))

#******************************************************************************#
#10.Create a vector with 5 numbers and find the data type of it.
vec1 <- 1:5
class(vec1)

#******************************************************************************#
#11.Create a vector with 5 numbers and 1 text and find the data type of it.
vec2 <- c(2:6,'Yes')
class(vec2)

#******************************************************************************#
#12.Create a vector with number from 1 to 1000 with a step of 10.
#     (Hint: use seq())
vec3 <- seq(1,1000,10)

#******************************************************************************#
#13.Create a vector V1 having numbers from 11 to 20. (Hint: use n:m )
v1 <- 11:20

#******************************************************************************#
#14.Extract the 5th, 7th and 9th element of the vector v1 and save it in an 
#     object V2.
v2 <- v1[seq(5,9,2)]

#******************************************************************************#
#15.Save the first 9 elements of the vector V1 in a separate object naming 'V3'
v3 <- v1[1:9]

#******************************************************************************#
#16.Create a vector "Airport.Codes" with the following information:
#   DEL, BOM, PUN, MAA, DEL, MAA, PUN, DEL, MAA, PUN, PUN, DEL, BOM
Airport.codes <- c('DEL','BOM','PUN','MAA','DEL','MAA','PUN','DEL','MAA','PUN',
                   'PUN','DEL','BOM')

#******************************************************************************#
#17.PUN is the incorrect airport code and it should be PNQ. Replace the values
#   in the vector Airport.Codes.
Airport.codes[Airport.codes == 'PUN'] <- 'PNQ'

#******************************************************************************#
#18.Create vector "x" with the values {4, 4, 5, 6, 7, 2, 9}.
# a.Calculate the number of observation (n), mean, sum, max, min, variance of 
#   the vector 'x".
# b.Also print the 3rd element, odd positions elements and elements from 2 to 6 
#   positions.
x <- c(4, 4, 5, 6, 7, 2, 9)
length(x)
mean(x)
sum(x)
max(x)
min(x)
var(x)

print(x[c(3,seq(3,6,2))])

#******************************************************************************#
#19.Create a vector 'Age' with values from 1 to 99.
age <- 1:99

#******************************************************************************#
#20.Create a vector 'Young.Old' by extracting values from 1 to 18 and 80 to 99
#   from Age Vector.
young.old <- age
young.old[young.old <= 18] <- 'Young'
young.old[young.old <= 99] <- 'Old'

#******************************************************************************#
#21.Find the number of elements in the vector Young.Old.
length(young.old)

#******************************************************************************#
#22.Find the sum, mean, median, min and max age in the vector Young.Old.
sum(young.old)
mean(young.old)
median(young.old)
min(young.old)
max(young.old)

#******************************************************************************#
#23.Create 6x4 matrix (6 rows and 4 columns) using 1 to 24 numbers
mat1 <- matrix(1:24,nrow = 6,ncol =4,byrow = T )

#******************************************************************************#
#24.Create a vector 'for.m' which has 30 numeric values. Use this vector to 
#   create a matrix my_matrix with 10 rows.
for.m <- sample(seq(50,500,8),30)
my_matrix <- matrix(for.m,10,3)

#******************************************************************************#
#25.Extract the 1st, 5th and 9th row of the 1st and 2nd column from the matrix
#   my_matrix.
my_matrix[c(1,5,9),1:2]

#******************************************************************************#
#26.Create data frame with the below vectors 
#   StoreID - (111, 208, 113, 408)
#   Tenure - (25, 34, 28, 52)
#   StoreType - ("Type1", "Type2", "Type1", "Type1")
#   status - ("Poor", "Improved", "Excellent", "Poor")
StoreID <- c(111,208,113,408)
Tenure <- c(25,34,28,52)
StoreType <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
df <- data.frame(StoreID,Tenure,StoreType,status)

#******************************************************************************#
#27.Print the data in different programs.
# a.only storeId, tenure
# b.only storetype and status
# c.only tenure
print(df[,c('StoreID','Tenure')])

print(df[,c('StoreType','status')])

print(df[,'Tenure'])

#******************************************************************************#
#28.Create a data.frame 'Employee.Info' by combining vectors. The table should 
#   have 4 columns with 5 rows. The columns should be - 'Employee.ID' , 
#   'Employee.Name', 'Employee.Salary' , 'Employee.Department'.
#   (Provide arbitrary values for the rows).
Employee.ID <- c('E150','E151','E152','E153','E154')
Employee.Name <- c('Kevin','Danny','Mark','Allie','Jim')
Employee.Salary <- c(1000,2500,3200,4320,NA)
Employee.Department <- c('HR','Purchase','Costing','Admin','Sales')
Employee.Info <- data.frame(Employee.ID,Employee.Name,Employee.Department,
                            Employee.Salary)

#******************************************************************************#
#29.Create different factors using the below vectors and label the values and 
#   order levels for factors "outcome" and "status".
# a.ethnicity - White", "African amrican", "White", "Asian"
# b.status - Poor", "Improved", "Excellent", "Poor"
# c.outcome - c(1, 3, 2, 4, 3, 1, 1) - labels- "Poor", "Average", "Good", "Excellent"
ethnicity<- factor(c("White", "African amrican", "White", "Asian"))
status <- factor(c("Poor","Improved","Excellent","Poor"))
outcome <- factor(c(1, 3, 2, 4, 3, 1, 1))
status_levels <- factor(status,levels = c('Poor','Improved','Excellent'))
outcome_levels <- factor(outcome,labels = c('Poor','Average','Good','Excellent'))

#******************************************************************************#
#30.Create list called "mylist" with the title "My First List" and with the 
# below objects called "ages" with below h, j and k. Also print the different 
# combinations of objects.
# h -numeric vector with the values 25, 26, 18, 39
# j - matrix with 5 rows and 2 columns with the values 1 to 10
# k - character vector with the values "one", "two", "three"
mylist <- list(h = c(25,26,18,39),j = matrix(c(1:10),5,2,byrow = T),
               k = c('one','two','three'))

#******************************************************************************#
#######################################
#-->Basic Exploratory Data Analysis<--#
#######################################

#31.Import the stores.csv dataset and save it as df1.
setwd
('C:/Users/Nithin/Downloads/R Practice Assignment/R Foundation Assignment')
df1 <- read.csv('stores.csv',header = T)

#******************************************************************************#
#32.Apply below functions on stores data frame and observe the outputs.
# class(df1)
# names(df1)
# length(df1)
# dim(df1)
# str(df1)
# head(df1)
# tail(df1)
# fix(df1)
# summary(df1)
# Hmisc::describe(df1)

class(df1)
names(df1)
length(df1)
dim(df1)
str(df1)
head(df1)
tail(df1)
fix(df1)
summary(df1)
Hmisc::describe(df1)

#******************************************************************************#
#33.Import the second sheet of the excel file CarData.xlsx and save it as Car.Info
Car.Info <- readxl::read_xlsx('CarData.xlsx',sheet = 2,col_names = T)

#******************************************************************************#
#34.Save the object df1 as an .RData file in the hard drive (df1.RData).
save(df1,file = 'df1.RData')

#******************************************************************************#
#35.Save all the objects created so far in a .RData File. Name it as My_Backup.
save(list = ls(),file = 'My_Backup.')

#******************************************************************************#
#36.Delete df1 and Car.Info from the global environment.
rm(df1,Car.Info)

#******************************************************************************#
#37.Find the names of all the current objects in the global environment and 
# save this information in an object 'Current_objects_in_GE'.
Current_objects_in_GE <- ls()

#******************************************************************************#
#38.Delete all the objects available in the global environment.
rm(list = ls())

#******************************************************************************#
#39.Import the df1.RData file from the hard drive.
load('df1.RData')

#******************************************************************************#
#40.Find the summary details of df1 (Hint: use summary() or Hmisc::describe()).
Hmisc::describe(df1)
summary(df1)

#******************************************************************************#
#########################################
#-->Structure Based Data Manipulation<--#
#########################################

#41.Find details regarding the structure of df1 (Hint: use str())
str(df1)

#******************************************************************************#
#42.Extract the column Staff_Cnt from df1 and save it in an object 'Staff_Count'
Staff_Count <- df1$Staff_Cnt

#******************************************************************************#
#43.Add 10 to every value of the vector 'Staff_Count' and name it as 
# 'Updated_Staff_Count'.
Updated_Staff_Count <- Staff_Count +10

#******************************************************************************#
#44.Add this vector 'Updated_Staff_Count' as a column in the data.frame df1.
df1['Updated_Staff_Count'] <- Updated_Staff_Count

#******************************************************************************#
#45.Create an object 'Store_Details' by extracting the following columns from 
# df1 - StoreCode, StoreName, StoreType, Location, OwnStore.
Store_Details <- df1[,c('StoreCode','StoreName','StoreType','Location','OwnStore')]

#******************************************************************************#
#46.Find the class of Store_Details.
class(Store_Details)

#******************************************************************************#
#47.Change the data type of the column StoreName from character to factor
df1$StoreName <- as.factor(df1$StoreName)

#******************************************************************************#
#48.Rename the column 'AcqCostPercust' to 'ACPC' and 'ProfitPercust' to 'PPC'
df1 <- dplyr::rename(df1,'ACPC' = 'AcqCostPercust','PPC' = 'ProfitPercust')

#******************************************************************************#
#49.Create a column 'MarketingSpend' which has a constant value of 200. Use 
# this column to create another column 'UpdatedOperatingCost' which is 
# OperatingCost + MarketingSpend.
df1$MarketingSpend <- 200
df1$UpdatedOperatingCost <- df1$OperatingCost + df1$MarketingSpend

#******************************************************************************#
#50.Delete the column MarketingSpend.
df1$MarketingSpend <- NULL

#******************************************************************************#
#51.In df1, the UpdatedOperatingCost should be next to the column OperatingCost
df1 <- df1[,c(1:5,16,6:15)]

#******************************************************************************#
#52.In df1, Create new variable store_class as follows.
# If total sales<120 then "Low Perform store"
# If total sales>=120 and total sales<240 then "Average Perform store"
# If total sales>240 then "High Perform store"
df1['store_class'] <- ifelse(df1$TotalSales< 120,'Low Perform store',
                      ifelse((df1$TotalSales>=120 & df1$TotalSales< 240),
                             'Average Perform store','High Perform store'))

#******************************************************************************#
#######################################
#-->Content Based Data Manipulation<--#
#######################################

#53.Find the names of the top 3 SuperMarket stores of Delhi with the highest
# TotalSales
top3 <-  df1 %>% dplyr::filter(Location == 'Delhi') %>% 
         arrange(desc(TotalSales)) %>% head(3)
 
#******************************************************************************#
#54.Find the information such as the StoreName, TotalSales, OperatingCost and 
# Staff_Cnt of the stores where the store is owned and there is an online presence       
dft <- df1[df1$OwnStore==1 & df1$OnlinePresence==1,
           c('StoreName','TotalSales','OperatingCost','Staff_Cnt')]

#******************************************************************************#
#55.Check if there are any duplicate rows in df1
df1[duplicated(df1),]

#******************************************************************************
#56.Check if there are any duplicate rows in df1 on the basis of StoreCode.
df1[duplicated(df1$StoreCode),]

#******************************************************************************
#57.Create a new dataset that has removed duplicates on the basis of StoreName 
# and StoreCode.
df2 <- df1[duplicated(df1$StoreCode)&duplicated(df1$StoreName),]

#******************************************************************************
#58.How to find missing values in the df1 dataset and recode missing values with
# 0? Delete the missing values (if there are any) from the data set?
colSums(is.na(df1))
df1$ACPC[is.na(df1$ACPC)] <- 0

#******************************************************************************
#59.Sort the df1 data as follows
# a.Create new dataset (newstores) with sorted data by "Storetype"
# b.Create new dataset (newstores) with sorted data by location(ascending) and 
#   totalsales in descending order.
newstores <- df1[order(df1$StoreType),]
newstores2 <- df1[order(df1$Location,-df1$TotalSales),]

rownames(newstores) <- NULL
rownames(newstores2) <- NULL

#******************************************************************************
#60.Create subsets of data from stores data as following conditions.
# a.Only Columns 5,7, 8,9
# b.Excluding columns 5, 7, 8,9
# c.Selecting first 10 observations
# d.Observations with Storetype= Apparel and totalsales>100
# e.Columns (storecode, storename, location, totalsales) with totalsales between
#   100 & 300.
# f.Include all columns from Storecode to Basketsize with storetype=Electronics 
#   and totalsale>100
a <- df1[,5:9]
b <- df1[,-(5:9)]       
c <- head(df1,10)
d <- df1[df1$StoreType == 'Apparel'& df1$TotalSales > 100,]
e <- df1[df1$TotalSales >= 100 & df1$TotalSales <= 300,c('StoreCode','StoreName',
                                                         'Location','TotalSales')]
f <- df1[df1$StoreType =='Electronincs'& df1$TotalSales > 100,1:11]

#******************************************************************************
