#-------------------------------------------------------------------------------
#Topic 4: R Programming
#-------------------------------------------------------------------------------
# 1. If-Else
x <- 6
y <- 5

if (x<y) {
   print("x is smaller than y")
 
} else {
print("x is larger than y")
}

#-------------------------------------------------------------------------------
# 2. While Loop
x <- 1
while (x<10) {
   print(x)
   x <- x+1
}

#-------------------------------------------------------------------------------  
#3.  For loop
for (i in c(3,8,2) ) {
   print(i)
 }

#-------------------------------------------------------------------------------
#4. Next
for (i in 1:10) {
  if (i == 4) {next}
  print(i)
}  

for (wt in mtcars$wt) {
  if (wt<3) {next}
  print(wt)
}

#-------------------------------------------------------------------------------
#5. Break
#Break the for loop, for example

for (i in 1:10) {
  if (i == 4) {break}
  print(i)
}

for (wt in mtcars$wt) {
  if (wt==3.46) {break}
  print(wt)
}

#-------------------------------------------------------------------------------  
#6. Quiz on Conditional and Loop

# Read weather.csv 
# Count the number of days where temperature is more than 65 in May
# Use for loop instead of logical indexing
# Ans: 16 

#ANSWER:
weather <- read.csv("weather.csv",header=TRUE)
weather.subset <- subset(weather,select=Temp, subset=Month==5)
temp <- weather.subset$Temp
count <-0
for (i in temp ) {
   if (i>65) {
      count <- count +1
   }
}

#-------------------------------------------------------------------------------  
# A simpler method wihout using loop and condition
length(temp[temp>65])

#-------------------------------------------------------------------------------
#7. Function
a<-function(x) {
   x*x
}
a(3)

#-------------------------------------------------------------------------------
#8.  Default argument
a<-function(x=4,y=5) {
   x*y
}
a(6,7)
a(6)
a(y=6)

#-------------------------------------------------------------------------------  
#9. Named Argument
  f <- function(x,y) {
    x*x+y*y*y
  }

f(x=3,y=2)
f(x=2,y=3)

#-------------------------------------------------------------------------------  
#10.  Variable argument
f<-function(x,y,...) {
   sum(x,y,...)
}

f(1, 2, 3, 4, 5)

#-------------------------------------------------------------------------------
#11. Quiz on Function

#Write a function to roll 2 dices, return the sum of the 2 dices
# Hint:
#  dice1 <-sample(1:6,size=1)
#  dice2 <-sample(1:6,size=1)

#ANSWER:
roll<-function() {
   dice <-sample(1:6,size=2)
   sum(dice)
}
roll()

#-------------------------------------------------------------------------------
#THE END
#-------------------------------------------------------------------------------