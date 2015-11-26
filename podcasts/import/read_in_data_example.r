# Date 13/01/2011
# Data Handling Course BD7054
# Intro to R Lesson 3 - reading in data
# Template file on how to read in data to R

# -------------------------------------------------------------------
# Housekeeping

rm(list=ls()) # remove everything currently held in the R memory

graphics.off() # close all open graphics windows 

# set the working directory, either manually or by command.

orig.path <- getwd()

setwd(file.path(orig.path, "podcasts/import"))

# -------------------------------------------------------------------
# Enter or read in your data from a file

# read in data from our CSV file
# This is a comma separated file

mydata <- read.csv("finger_lengths.csv", 
                   header = TRUE, stringsAsFactors = FALSE)



# --------------------------------------------------------------------
# Plot your data


# A new figure for plotting
#dev.new()
# In this case, a very basic boxplot. See subsequent podcasts and scripts 
# for making these nicer looking.
boxplot(finger.length ~ hand, data = mydata,
        xlab = "Hand", ylab = "digit length(mm)")



# --------------------------------------------------------------------
# Analyse your data
# e.g. a t-test, or linear regression, or ANOVA, or whatever




# --------------------------------------------------------------------
# Plot the results of your analysis



# --------------------------------------------------------------------
# Save your data (only if you want)

# The "list=" command tells us which variables we want to save
# The "file=" option tells us what file to save the data to

# save( list=ls(), file="finger_data.rdata" )

# -------------------------------------------------------------------
# Housekeeping - Cleaning up

# reset the working directory
setwd(orig.path)





