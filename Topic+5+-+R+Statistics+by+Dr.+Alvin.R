#-------------------------------------------------------------------------------
# Topic 5 - R Statistics
#-------------------------------------------------------------------------------
# Descriptive Statistics
#-------------------------------------------------------------------------------
# 1. Statistics Applied to Vectors
a <- matrix(1:20,ncol=4)

# Statistical functions
mean(a)
median(a)
sum(a)
prod(a)
min(a)
max(a)
cummin(a)
cummax(a)
cumsum(a)
cumprod(a)
diff(a)
sort(v, decreasing=TRUE)

#-------------------------------------------------------------------------------
# 2. Mean with Trim
data <- c(3,NA,4,6,NA,10,2)
mean(data,trim=0.1)
mean(data,na.rm = TRUE)
summary(data)

#-------------------------------------------------------------------------------
#An example to explain trim 
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

v1 <- c(linkedin + facebook)
v2 <- sort(v1)

mean(v2[-c(1, 7)])
mean(v1, trim = 0.2)
#10 16 18 21 28 30 33
#trim 0.2 would mean removing 10 and 33 for averaging

mean(v2[-c(1:2, 6:7)])
mean(v1, trim = 0.4)
#10 16 18 21 28 30 33
#trim 0.4 would mean removing 10 16 30 33 for averaging

#-------------------------------------------------------------------------------
#3. Quiz on Mean with Trim (5 min)
# Compare the mean (with trim=0.1,0.2 and 0.3) 
# and median values of the weather.csv Ozone level

#ANSWER:
weather <- read.csv("weather.csv", header = TRUE)
mean(weather$Ozone, trim=0.2, na.rm = TRUE)
median(weather$Ozone, na.rm = TRUE)

#-------------------------------------------------------------------------------
# Hypothesis Testing
#-------------------------------------------------------------------------------
#4. Two Sample t-Test (Two Tails)
boxplot(extra~group,data=sleep)
t.test(extra~group,data=sleep)

#-------------------------------------------------------------------------------
#5. Two Sample t-Test (One Tail)
t.test(extra~group,data=sleep,alternative="less")
t.test(extra~group,data=sleep,alternative="greater")

#-------------------------------------------------------------------------------
#6. Quiz on Two Sample t-Test (5 min)
# Do a 2 sample t-test on chickwts casein vs horsebean feeds
# - two-sided
# - less
# - greater

#ANSWER:
boxplot(weight~feed,data=chickwts)

d <- subset(chickwts,feed == "casein" | feed =="horsebean")

t.test(weight~feed,data=d)
t.test(weight~feed,data=d,alternative="less")
t.test(weight~feed,data=d,alternative="greater")

#-------------------------------------------------------------------------------
#7. One Sample t-Test
sleep.subset = subset(sleep, subset=group==1)

t.test(sleep.subset$extra,mu=0)

#-------------------------------------------------------------------------------
#8. Quiz on One Sample t-Test (5 min)
# Do a 1 sample t-test on chickwts meatmeal feed and test the hypothesis 
# that the mean of the weight is 160

#ANSWER:
chickwts.subset = subset(chickwts, subset=feed=='meatmeal')
t.test(chickwts.subset$weight,mu=160)

#-------------------------------------------------------------------------------
# ANOVA
#-------------------------------------------------------------------------------
#9. ANOVA
m <- aov(weight~feed,data=chickwts)
summary(m)

#-------------------------------------------------------------------------------
#10. Quiz on ANOVA (5 min)
# Perform an ANOVA to determine any difference between the test scores of 
# 3 teaching methods
# Method A = 79, 86, 94, 89 
# Method B = 71, 77, 81, 83 
# Method C = 82, 68, 70, 76

#ANSWER:
df <- data.frame(
  MethodA = c(79, 86, 94, 89), 
  MethodB = c(71, 77, 81, 83), 
  MethodC = c(82, 68, 70, 76),
  row.names=c('1','2','3', '4')
)

m <- aov(MethodA~MethodB+MethodC,data=df)
summary(m)

#-------------------------------------------------------------------------------
# Correlation
#-------------------------------------------------------------------------------
#11. Correlation
  
mtcars.sample = subset(mtcars, select=c('mpg','disp','wt'))
mtcars.cor = cor(mtcars.sample)
round(mtcars.cor,2)

#-------------------------------------------------------------------------------
#Another way...

data <- mtcars[,c(1,3,6)]
cor(data$mpg,data$wt)
round(cor(data),2)
  
#-------------------------------------------------------------------------------
#12. Quiz on Correlation (2 min)
# Perform a correlation for the quakes data.
# Which pair of variables show strong correlation?

#ANSWER: 
round(cor(quakes),2)

#-------------------------------------------------------------------------------
# Regression
#-------------------------------------------------------------------------------
#13. Linear Regression
x <- 1:5
y <- c(1.3,4.3,5.5,8.4,14.2)
plot(x,y)
 
m <- lm(y~x)
summary(m)
 
predict(m,data.frame(x=6))

#-------------------------------------------------------------------------------  
#14.  Hands On Linear Regression odel
m <- lm(mpg ~ wt, data = mtcars)

# Intercept and Slope
coef(m)
summary(m)

# Prediction
p <- predict(m, data.frame(wt = 3))

#-------------------------------------------------------------------------------
#15. Adding Regression Line to Scatter Plot
plot(mgp~wt,data=mtcars)
abline(m,col='red')

#-------------------------------------------------------------------------------  
# 16. Quiz on Linear Regression (5 min)
# Do a linear regression for the quake dataset - mag vs stations
# Predict the quake mag when there are 100 stations receiving the quake signal.
# Add the regression line to the plot of mag vs stations

#ANSWER:
x <- quakes$stations
y <- quakes$mag
plot(x,y)
 
m <- lm(y~x)
predict(m,data.frame(x=100))
abline(m,col='red')

#-------------------------------------------------------------------------------
#17. Multiple Regression 
round(cor(mtcars[,1:5]),2)
m <- lm(mpg~wt+hp,data=mtcars)
predict(m,data.frame(wt=3,hp=200))

#-------------------------------------------------------------------------------
#18. Quiz on Multiple Regression (5 min)
# Do a multiple regression (with interaction) for the mtcars dataset 
# for mpg dependence on wt, hp, disp 
# Predict the mpg when disp=160, hp=110 and wt = 2.6

#ANSWER:
m <- lm(mpg ~ wt+hp+disp, data = mtcars)
m <- lm(mpg ~ wt+hp+disp+wt*hp, data = mtcars)

# Intercept and Slope
coef(m)
summary(m)

# Prediction
predict(m,data.frame(wt=2.62,hp=110,disp=160,cyl=6))

#-------------------------------------------------------------------------------
#THE END
#-------------------------------------------------------------------------------