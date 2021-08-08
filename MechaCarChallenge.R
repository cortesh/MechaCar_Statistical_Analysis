library(jsonlite)
library(tidyverse)

# ------------------------------------------------------------------------------------------------------
# deliverable 1 Linear Regression to Predict MPG (30 points)

# read MechaCar_mpg as dataframe
mecha_mpg <- read.csv(file='mECHAcAR_MPG.csv',check.names=F,stringsAsFactors = F)

head(mecha_mpg)

#generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg)) 

# ------------------------------------------------------------------------------------------------------
# deliverable 2 Create Visualizations for the Trip Analysis (30 points)


# Suspension_Coil as dataframe
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

head(Suspension_Coil)

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the 
# mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- Suspension_Coil  %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) 


# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions 
# to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary <- Suspension_Coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) 


# ------------------------------------------------------------------------------------------------------
# deliverable 3 T-Tests on Suspension Coils (20 points)

#import  dataset
population_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#randomly sample 50 data points
sample_table <- population_table %>% sample_n(50) 

#compare sample versus population means
t.test(log10(sample_table$PSI),mu=mean(log10(population_table$PSI)))

ggplot(sample_table,aes(x=PSI)) + geom_density() #visualize distribution using density plot


t.test(subset(population_table$PSI,sample_table$Manufacturing_Lot == 'Lot1')) # t-test for Lot 1
t.test(subset(population_table$PSI,sample_table$Manufacturing_Lot == 'Lot2')) # t-test for Lot 2
t.test(subset(population_table$PSI,sample_table$Manufacturing_Lot == 'Lot3')) # t-test for Lot 3

