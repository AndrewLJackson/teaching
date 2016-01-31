# Author: Andrew L Jackson
# Date 31/08/2012
# Script to illustrate scatter plots in R
# and contains basic instructions on how to 
# customise figures and render publishable
# graphs.
# Data: iris (in-built dataset in R base)

# -------------------------------------------------------------------
# Housekeeping

rm(list=ls()) # remove everything currently held in the R memory

graphics.off() # close all open graphics windows 

# store the original working directory so we can revert at the end of this
# script.
#orig.path <- getwd() 

# set working directory
#setwd(file.path(orig.path, "podcasts/graphs"))
#setwd("~/Documents")

# -------------------------------------------------------------------
# Enter or read in your data from a file
# In this example we will use the in-built dataset "iris" which gives the 
# measurements in centimeters of the variables sepal length and width 
# and petal length and width, respectively, for 50 flowers from each 
# of 3 species of iris. The species are Iris setosa, versicolor, and virginica.
# see ?iris for more information

#setwd("D:/Alternative My Documents/Andrews Documents/Camtasia Studio/R podcasts/R podcasts scripts/graphics scripts")

# read in data from our CSV file                              
# This is a comma separated file

#brain.data <- read.csv("brain_data.csv", header=TRUE)

# load the data for this example
data(iris)


# --------------------------------------------------------------------
# Plot and explore your data


head(iris)

# we will focus on the Petal Length and Width data for a start

# First a basic plot
plot( Petal.Length ~ Petal.Width, data = iris)



# now tidy up the labels and make the fonts bigger

plot( Petal.Length ~ Petal.Width, data = iris,
        xlab="Petal Width (cm)", 
        ylab="Petal Length (cm)", 
        pch=20,
        cex.lab=1.5, cex.axis=1.5, cex=1.2,
        bty="L", las=1, tcl=0.5 )

# add a line of best fit through the points
# see podcast on linear regression for more details.
abline(glm(Petal.Length~Petal.Width, data = iris), 
       col="black", lwd=2, lty=1)


# include information on the different species
# now tidy up the labels and make the fonts bigger
my.colors <- c("black","blue","green")
my.points <- c(16, 17, 18)

plot( Petal.Length~Petal.Width, data = iris,
      col = my.colors[Species], 
      pch = my.points[Species],
      xlab = "", ylab = "",
      cex.lab = 1.5, cex.axis = 1.5, cex = 1.2,
      bty="L", las = 1, tcl = 0.5
)

mtext("Petal Width (cm)",  side = 1, line = 3, cex = 1.5)
mtext("Petal Length (cm)", side = 2, line = 2.5, cex = 1.5)

# add a legend. NB we have to directly call the columns within iris using
# the $ sign notation.
  
legend("topleft", levels(iris$Species), 
       col = my.colors, pch = my.points, 
       lty = 0, bty = "n", cex=1.5) 


# some other embellishments you might want to add...

abline(h = mean(iris$Petal.Length[iris$Species=="versicolor"]),
       col = "blue", lty = 2)


# add some random text to the graph
text(1.5,2,labels="this graph pwns",col="peachpuff4",cex=2 )

# add some specific lines or points
points(2.5, 2, 
       pch = 10, col = "red", cex = 2)

lines(c(2.2, 2.5), 
      c(2, 3), 
      col = "magenta", lwd = 2)

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


# once you are happy with your graph, you can export it as
# a high resolution tiff for example.


# -------------------------------------------------------------------
# Housekeeping - Cleaning up
#setwd(orig.path)





