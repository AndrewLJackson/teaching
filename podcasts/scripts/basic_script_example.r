# First published: 12/01/2011
# Authored: 26/11/2015
# Data Handling Course BD7054 & ZO4030
# Intro to R Lesson 2 - using script files
# Template file on how to analyse data in R

# -------------------------------------------------------------------
# Some Housekeeping

rm(list=ls()) # remove everything currently held in the R memory

graphics.off() # close all open graphics windows 

# set the working directory, either manually or by command.

orig.path <- getwd()

setwd(file.path(orig.path, "podcasts/scripts"))

# -------------------------------------------------------------------
# Enter or read in your data from a file

# NB these are example data only
# These are the lengths of my digits on my left and right hands
# measures in mm.

left <- c(5.8, 7.5, 8.5, 7.3, 5.8)

right <- c(5.7, 7.3, 8.3, 7.0, 5.6)

mydata <- data.frame( left = left, right = right)


# --------------------------------------------------------------------
# Plot your data

# you might want to look at the spread of your data using e.g. 
# a boxplot
#dev.new()
boxplot( mydata )

# open up a new figure for plotting
#dev.new()
boxplot(mydata, xlab="Hand", ylab="digit length(mm)")

# you might want to plot one variable against another
#dev.new()
plot(right ~ left, data = mydata,
     xlab = "left hand", ylab = "right hand",
     xlim = c(5.5,9), ylim=c(5.5,9))

summary(mydata)


# --------------------------------------------------------------------
# Analyse your data
# e.g. a t-test, or linear regression, or ANOVA, or whatever




# --------------------------------------------------------------------
# Plot the results of your analysis



# --------------------------------------------------------------------
# Save your data (only if you want).. and more often than not you do 
# not want to save your data like this. Instead you should aim to have
# a script that will run from start to finish each time you require the 
# outputs. If your anlayses take a very long time to run as is the case 
# for some complex statistical models, then you might want to save the 
# outputs like this in order to have access to the results without the 
# need to re-run the script.

# The "list=" command tells us which variables we want to save
# The "file=" option tells us what file to save the data to

save( list=ls(), file="finger_data.rdata" )

# and reset the current working directory to the original path
setwd(orig.path)


