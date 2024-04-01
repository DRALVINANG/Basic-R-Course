#-------------------------------------------------------------------------------
#Topic 1: Introduction to R Data Types
#-------------------------------------------------------------------------------
# 1. Assignment and Checking the Data Type Number
a<-1
a->1
a = 1

str(a)

#-------------------------------------------------------------------------------
# 2. String
a<-'I LOVE DR ALVIN'
str(a)

#-------------------------------------------------------------------------------
# 3. Split String
a <- "abc@def.com"
b <- strsplit(a,"@")
print(b)

#-------------------------------------------------------------------------------  
# 3. Join String
a<-"abc"
b<-"def.com"
c<-paste(a,b,sep="@")
print(c)

#-------------------------------------------------------------------------------  
# 4. Vector 
a <- c(2,3,4)
a <- 1:10
a <- seq(2,20,2)
a <- seq(from=4.5, to=2.5, by=-0.2)
a <-seq(0, 1, length.out = 11)
a <-rep(c(1,2,3),3)
a <-rep(seq(3),length.out=5)
s<-rep(1:4, each = 2,)

#-------------------------------------------------------------------------------  
# 5. Quiz on Vector (5 min)
#Use seq or rep to generate the following vectors

# [3,6,9,12,15]
# [8,8,6,6,4,4,2,2]
# [10,8,6,10,8,6]

#ANSWER:
seq(3,15,3)
rep(seq(8,2,-2),each=2)
rep(seq(10,6,-2),2)

#-------------------------------------------------------------------------------  
# 6. Accessing elements in Vector
a[5]
a[5:8]
a[5:3]
a[-2]
a[-1:-4]
a[ c(5, 6, 7, 8) ]

#-------------------------------------------------------------------------------
# 7. Quiz on Accessing Vector Element (5 min)
# Access the 3,5, and 7th element in the following vector 
# [8,8,6,6,4,4,2,2]

#ANSWER:
a<-rep(seq(8,2,-2),each=2)
a[c(3,5,7)]

#-------------------------------------------------------------------------------
# 8. Logical Indexing 
a <- c(4,5,-1,-6,4,2,9,-3)
sum(a[a>0])

#-------------------------------------------------------------------------------  
# 9. Dropping NA Values
a<-c(1:5,rep(NA,3),6:10)
a[!is.na(a)]

#---------------------------------------------------------------------------------------------------------------------------------------------
# 10. Quiz on Logical Indexing (5 min)
# a = c(seq(1, 10, 3), rep(NA, 3), seq(10, 2, -2))
#1. Filter out the NA
#2. Determine the sum of the elements that is more than 5

#ANSWER:
sum(a[!is.na(a) & a>5])

#-------------------------------------------------------------------------------  
# 11. Vector Operations
a<-c(1,2,3)
b<-c(3,2,1)
a+b
a-b

#-------------------------------------------------------------------------------  
# 12. Matrix
a<-matrix(1:12,nrow=4)
a<-matrix(1:12,ncol=4)

#-------------------------------------------------------------------------------  
# 13. Combining Vectors to Matrix
a<-c(1,2,3)
b<-c(4,5,6)
c<-rbind(a,b)
d<-cbind(a,b)

#-------------------------------------------------------------------------------  
# 14. Accessing Matrix Elements
a<-matrix(1:12,nrow=4)
a[2,2]
a[2,c(2,3)]
a[2,]
a[,2]

#-------------------------------------------------------------------------------  
# 15. Quiz on Accessing Matrix Elements (5 min)
a <- matrix(1:20,ncol=4). Extract the elements in red
# 1    6   11   16
# 2    7   12   17
# 3    8   13   18
# 4    9   14   19
# 5   10   15   20

#ANSWER:
a <- matrix(1:20,ncol=4)
a[c(3,5),c(2,4)]

#-------------------------------------------------------------------------------  
# 16. Array
a<-array(1:20,dim=c(2,2,5))

#-------------------------------------------------------------------------------  
# 17. Quiz on Array (5 min)
#Create an array with 3x2x3 dimensions from 1 to 18

#ANSWER:
a<-array(1:18,dim=c(3,2,3))

#-------------------------------------------------------------------------------  
# 18. Data Frame
df <- data.frame(
  gender = c("Female", "Female","Male"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  age =c(42,38,26),
  row.names=c('Ally','Belinda','Alvin')
)

#-------------------------------------------------------------------------------  
# 19. Accessing Data Frame
df[c('gender','age')]
df[2,]
df[,2]

#---------------------------------------------------------------------------------
# 20. Filter the df with Logical Indexing
df.male <-df[df$gender=='Male',]
df.male

#-------------------------------------------------------------------------------  
# 21. Subset and Sample
df.subset = subset(df,select=c('gender','age'))
df.subset = subset(df,select=c('gender','age'),subset=age>30)

#-------------------------------------------------------------------------------
#22. Add Column to Dataframe
df$name =c('Ally','Belinda','Jane')

#-------------------------------------------------------------------------------  
#23. Add Rows to df
df2 <- data.frame(	
  gender = c("Female", "Male","Female"),
  height = c(155, 171.5, 155),
  weight = c(71,93, 68),
  age =c(42,38,26),
  row.names =c('SC','Alfred','TC')
)

df3 <- rbind(df,df2)

#-------------------------------------------------------------------------------
#24. Summary of df
summary(df)

#-------------------------------------------------------------------------------
# 25. Heads and Tails
cars = mtcars

head(cars.select,7)
tail(cars.select,3)

#-------------------------------------------------------------------------------
# 26. Quiz on Accessing Dataframe
#cars = mtcars
#extract the mpg, am and wt

#ANSWER:
cars = mtcars
cars.select = cars[c('mpg','am','wt')]
cars.select

#-------------------------------------------------------------------------------  
# 27. Quiz on Filtering Dataframe
#cars = mtcars
#filter all the mpg>15 and am=1
#Hint: Use '&' for 2 conditions 

#ANSWER:
cars[cars$mpg>15 & cars$am==1,]

#-------------------------------------------------------------------------------  
# 28. Quiz on Selecting Columns and Category (5 min)
#cars = mtcars
#form a subset to show only mpg and am columns , only for automatic cars (am=1) 

#ANSWER:
cars = mtcars
cars.subset = subset(cars, select=c('mpg','am'),subset=am==1)
cars.subset

#-------------------------------------------------------------------------------  
#29. Quiz on Summary (2 mins)
#from the previous subset exercise, 
#display the summary for mpg and am

#ANSWER:
summary(cars.subset)

#-------------------------------------------------------------------------------  
#30. List
a<-list(c(1,10), matrix(1:20,nrow=4),df)
a

#-------------------------------------------------------------------------------  
#31. Factors & Tables
a<-c("red","red","green","blue","blue")
a.factor <- factor(a)
a.factor
levels(a.factor)
table(a.factor)

#-------------------------------------------------------------------------------  
# 32. Create a Table
cars.factor = factor(cars$am)
table(cars.factor)

#-------------------------------------------------------------------------------
#THE END
#-------------------------------------------------------------------------------