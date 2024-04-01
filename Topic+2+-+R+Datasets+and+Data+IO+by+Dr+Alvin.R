#-------------------------------------------------------------------------------
# R Datasets and Data IO
#-------------------------------------------------------------------------------
#a. Quake Dataset
quakes.subset = subset(quakes,subset=mag>5)
round(mean(quakes.subset$stations),digits = 0)

#-------------------------------------------------------------------------------
#b. Read CSV 
getwd()
weather = read.csv('weather.csv',header = TRUE)
weather

#-------------------------------------------------------------------------------  
#c. Quiz on Read Weather.csv (5 min)
# Write a R script to do the following
# Read the weather data
# compute the average Ozone level in the month of May

# ANSWER:
weather <- read.csv("weather.csv", header = TRUE)
weather.Ozone.subset <- subset(weather, select=Ozone, subset = Month==5)
mean(weather.Ozone.subset[!is.na(weather.Ozone.subset)])

#-------------------------------------------------------------------------------  
# d. Output a CSV
write.csv(weather.Ozone.subset,'may_data.csv')

#-------------------------------------------------------------------------------  
# e. Quiz on Creating a CSV (5 min)
# Write a R script to 
# - Sample the mtcars with only mpg and hp data
# - Save the sample to a csv file
# Ans: 23.61 

#ANSWER:
mtcars.subset = subset(mtcars, select=c(mpg,hp))
write.csv(mtcars.subset,"mtcarrs.csv")

#-------------------------------------------------------------------------------  
#THE END
#-------------------------------------------------------------------------------  
