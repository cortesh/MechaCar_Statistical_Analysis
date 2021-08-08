library(jsonlite)
library(tidyverse)

# read MechaCar_mpg as dataframe
mecha_mpg <- read.csv(file='mECHAcAR_MPG.csv',check.names=F,stringsAsFactors = F)

head(mecha_mpg)

#generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg)) 
