# script to create some data for fitting polynomials to.


graphics.off()
rm(list=ls())

# this line sets the random number generator to the same starting point each 
# time so that you should get consistent random numbers each time you run this.
# Random computer generated numbers are not truly random.. they follow an 
# algorithm. http://en.wikipedia.org/wiki/Pseudo-random_number_generator
set.seed(1)


# create some random x data and the corresponding response variable
x <- runif(50,0,100)
my.data <- data.frame(effort = x, 
                      richness = 3*log(x) + 10 + rnorm(length(x),0,0.5)
                      )



write.csv(my.data, 
          file = file.path(getwd(), 
                           "/vignettes/polynomials-aic/curved-data.csv"), 
          row.names = FALSE)
