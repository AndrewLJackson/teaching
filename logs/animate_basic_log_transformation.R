# function to play around with animating log transformations in scatter plots

# ------------------------------------------------------------------------------

library(viridis)
palette(viridis(8))

# ------------------------------------------------------------------------------
# set up

# a series of log10 body masses to consider
log.y <- -2:4 

# their kg counterparts
y <- 10 ^ log.y

# plot and animate the transition
saveGIF(linLogTrans(y, log.y, base=10, steps=100), interval = 0.2)

# ------------------------------------------------------------------------------


