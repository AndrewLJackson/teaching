# Date 24/07/2012
# Histograms in R
# Template file on how to create histogram plots of your data
#


# -------------------------------------------------------------------
# Housekeeping

rm(list=ls()) # remove everything currently held in the R memory

graphics.off() # close all open graphics windows 

# set working directory
orig.path <- getwd()

setwd(file.path(orig.path, "podcasts/graphs"))

# -------------------------------------------------------------------
# Enter or read in your data from a file
#
# In this example we will use the in-built dataset "iris" which gives the 
# measurements in centimeters of the variables sepal length and width 
# and petal length and width, respectively, for 50 flowers from each 
# of 3 species of iris. The species are Iris setosa, versicolor, and virginica.
# see ?iris for more information


# read in data from our CSV file                              
# This is a comma separated file

#brain.data <- read.csv("brain_data.csv", header=TRUE)

# load the example data bundled with R for this example
data(iris)


# --------------------------------------------------------------------
# Plot and explore your data


head(iris)

# we will focus on the Petal Length data for a start

# open up a new figure for plotting
# and plot a basic histogram of the frequencies
#dev.new()
hist(Petal.Length)



# We can alter the way in which the breaks and hence bins
# are created and drawn. You might need to change the fourth hist()
# line below to match the podcast.

par(mfrow=c(2,2)) # specify a 2x2 panel plot
hist(iris$Petal.Length, breaks="Sturges", main="Sturges Method (default)")
hist(iris$Petal.Length, breaks=30, main="30 bins")
hist(iris$Petal.Length, breaks=50, main="50 bins")
hist(iris$Petal.Length, breaks=seq(0, 7, 0.5), main="bins breaks every 0.5cm")



par(mfrow=c(2,2)) # specify a 2x2 panel plot
hist(iris$Petal.Length[iris$Species=="setosa"])



# Now, lets look at the three different Species seperately
#dev.new()

par(mfrow=c(3,1)) # specify a 3x1 panel plot

# Species == setosa
hist(iris$Petal.Length[iris$Species=="setosa"], breaks=seq(0,7,0.25),
     main="setosa", xlab="", ylab="", cex.lab=1.5,
     col = "lightgrey")

# Species == versicolor
hist(iris$Petal.Length[iris$Species=="versicolor"], breaks=seq(0,7,0.25),
     main="versicolor", xlab="", ylab="Frequency", cex.lab=1.5,
     col = "grey")

# Species == virginica
hist(iris$Petal.Length[iris$Species=="virginica"], breaks=seq(0,7,0.25),
     main="virginica", xlab="Petal Length (cm)", ylab="", cex.lab=1.5,
     col = "darkgrey")





# --------------------------------------------------------------------
# Analyse your data
# e.g. a t-test, or linear regression, or ANOVA, or whatever



# --------------------------------------------------------------------
# Plot the results of your analysis



# 
# --------------------------------------------------------------------
# Save your data (only if you want)

# The "list=" command tells us which variables we want to save
# The "file=" option tells us what file to save the data to

# save( list=ls(), file="grazing_data.rdata" )

# -------------------------------------------------------------------
# Housekeeping - Cleaning up
setwd(orig.path)





