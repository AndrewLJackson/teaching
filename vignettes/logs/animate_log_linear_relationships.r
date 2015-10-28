# function to play around with animating log transformations in scatter plots

# ------------------------------------------------------------------------------
# set up
set.seed(2)


# ------------------------------------------------------------------------------
# set up

n <- 100

x <- runif(n,10,100)

y <- log10(x + rnorm(n, 0, 5) )

m <- lm(y ~ log10(x))

summary(m)

x.seq <- seq(1, 100, length=100)


# ------------------------------------------------------------------------------
# the two plots between which the animation needs to move
par(mfrow=c(1,2))

# raw data
plot(x, y, type = "p")
lines(x.seq, coef(m) %*% rbind(rep(1,n),log10(x.seq)), col="red")


# x on log10 scale
# NB here I use the
plot(x, y,log = "x", type = "p", xlog = T)
lines(x.seq, coef(m) %*% rbind(rep(1,n),log10(x.seq)), col = "red")
