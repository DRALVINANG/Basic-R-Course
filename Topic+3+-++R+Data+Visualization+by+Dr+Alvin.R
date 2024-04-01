#-------------------------------------------------------------------------------
# Data Visualization
#-------------------------------------------------------------------------------
#1. Scatter Plot 
x <- seq(-10,10,length.out=50)
y <- sin(x)

plot(x,y,main='sin curve',xlab='x',ylab='y',col='red')

#-------------------------------------------------------------------------------
#2. Line Plot  
lines(x,y)

#-------------------------------------------------------------------------------  
#3. Quiz on Scatter Plot (2 min)
# Plot the mtcars mpg vs wt

#ANSWER: 
plot(mtcars$wt, mtcars$mpg)

#-------------------------------------------------------------------------------
#4. Pair Plot
plot(mtcars[c('mpg','disp','wt')])
plot(mtcars)
plot(mtcars[c(1,3,5)])

#-------------------------------------------------------------------------------  
#5.  Quiz on Pair plots (5 min)
# Read the quake dataset
# Do a multi plot comparing depth,mag and stations

#ANSWER: 
plot(quakes[c('depth','mag','stations')])

#-------------------------------------------------------------------------------
sleep

#6. Boxplot
boxplot(extra~group,data=sleep)

#-------------------------------------------------------------------------------  
# 7. Quiz on Boxplot (2 min)
# Read the chickwts dataset
# Do a multi plot comparing weight vs different feeds

#ANSWER:
boxplot(weight~feed, data=chickwts)

#-------------------------------------------------------------------------------  
#8. Barplot
a <-c(4,5,2,1)
barplot(a,col=c("yellow","red","blue","green"))

#-------------------------------------------------------------------------------
#9. Quiz on Bar Plot mtcars (5 min)
# Use the mtcars dataset 
# Plot the barplot for # of cars vs am

#ANSWER:
cars = mtcars$am
table(mtcars$am)
barplot(table(mtcars$am))

#-------------------------------------------------------------------------------  
#10. Pie Chart
a <-c(4,5,2,1)
pie(a,col=c("yellow","red","blue","green"))

#-------------------------------------------------------------------------------
#11. Quiz on Pie Chart (5 min)
# Use the mtcars dataset 
# Plot the pie chart for # of cars vs cy

#ANSWER:
a = table(mtcars$cyl)
pie(a,col=c("yellow","red","blue"))

#-------------------------------------------------------------------------------
#12. Histogram
a <- rnorm(1000)
hist(a,breaks = c(-4,-2,0,2,4))

#-------------------------------------------------------------------------------  
#13. Quiz on Histogram (5 min)
# Use the mtcars dataset 
# Plot the histogram for mp

#ANSWER:
hist(mtcars$mpg, breaks=30)

#-------------------------------------------------------------------------------
#THE END
#-------------------------------------------------------------------------------