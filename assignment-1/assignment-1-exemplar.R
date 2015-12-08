# load the viridis package for pretty and accessible colours especially for those with 
# colour blindness. You will need to install this if you dont have it already using
# install.packages("viridis")
library(viridis)

# Here I create a palette of 8 colours from the viridis spectrum. I can then access these colours
# within plotting commands by e.g. plot(0,0, col = 1), or plot(0,0, col = 4) or plot(0,0, col = 8).
# This palette is also useful as it will print clearly in greyscale without any extra effort.
# see vignette for viridis for more details.
palette(viridis(3))

# read in the data
mydata <- read.csv("exemplar-brain-data.csv", header = T )

# ------------------------------------------------------------------------------
par(mfrow=c(1,1))
# plot the data as a boxplot plot
plot(log10(brain / body) ~ class,
     data = mydata,
     ylab = expression(log[10](body~mass / brain~mass)),
     xlab = "Class",
     cex.axis = 1.2, cex.lab = 1.2,
     frame.plot = FALSE)

# ------------------------------------------------------------------------------
# plot the log transformed data as a scatter plot
plot(log10(brain) ~ log10(body),
     data = mydata,
     pch = 19, las = 1, bty = "L",
     xlab = expression(log[10](body~mass~g)),
     ylab = expression(log[10](brain~mass~g)),
     cex.lab = 1.3,
     cex.axis = 1.2,
     col = mydata$class,
     mgp = c(2.5, 1, 0))

abline(glm(log10(brain)~log10(body), data = subset(mydata, class=="Aves")),
       col = 1, lwd = 2 )
abline(glm(log10(brain)~log10(body), data = subset(mydata, class=="Mammalia")),
       col = 2, lwd = 2 )

legend("topleft", c("Aves","Mammalia"), lty = 1, pch = 19, 
       col = c(1,2), bty = "n", cex = 1.2)
