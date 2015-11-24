# This script generates some simulated data and then tries various
# polynomials and log transformed covariate models and compares them using AIC

graphics.off()
rm(list=ls())

# this line sets the random number generator to the same starting point each 
# time so that you should get consistent random numbers each time you run this.
# Random computer generated numbers are not truly random.. they follow an 
# algorithm. http://en.wikipedia.org/wiki/Pseudo-random_number_generator
set.seed(1)

# create some random x data and the corresponding polynomial forms of it
x <- runif(50,0,100)
x2 <- x^2
x3 <- x^3
x4 <- x^4
x5 <- x^5
x6 <- x^6

# here define our reponse variable "y1" as being a function of log(x) only.
y1 <- 3*log(x) + 10 + rnorm(length(x),0,0.5)



# fit the models
m.null <- glm(y1~1)
m1 <- glm(y1~x)
m2 <- glm(y1~x+x2)
m3 <- glm(y1~x+x2+x3)
mlog <- glm(y1~log(x))

# im not going to plot these more complex ones but include them here to 
# allow comparison of AIC values across a wider spectrum
m4 <- glm(y1~x+x2+x3+x4)
m5 <- glm(y1~x+x2+x3+x4+x5)
m6 <- glm(y1~x+x2+x3+x4+x5+x6)


# ------------------------------------------------------------------------------
# The null model
# ------------------------------------------------------------------------------

# there are two ways to visualise the null model... either ignore the x variable
# since it is not included in the model and show a box-plot, or categorical 
# scatter plot.... or, plot it with the x-variable but acknowledge that it has
# no effect.


dev.new()
par(mfrow=c(2,1))

# option 1... a categorical scatter plot
plot(rep(1,length(y1)),y1,
    main="",bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")
abline(h=mean(y1),col="red",lwd=2,lty=2)

# option 2... as a scatter plot with y against x
plot(x,y1,main="",bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")
abline(h=mean(y1),col="red",lwd=2,lty=2)

dev.new()
plot(x,y1,main="Null Model raw data",bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")
abline(h=mean(y1),col="red",lwd=2,lty=2)

dev.new()
plot(x,resid(m.null),main="residuals of null model Y~1",
      bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")
abline(0,0,lwd=2,lty=2,col=2)

# ------------------------------------------------------------------------------
# linear
# ------------------------------------------------------------------------------
dev.new()
plot(x,y1,main="",bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")

m1 <- glm(y1~x)
dev.new()
plot(x,y1,main="",bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")
abline(m1,lwd=2,lty=2,col="red")

dev.new()
plot(x,resid(m1),main="residuals of linear model Y~X",
      bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")
abline(0,0,lwd=2,lty=2,col=2)


# ------------------------------------------------------------------------------
# Quadratic
# ------------------------------------------------------------------------------

# plot the data with a quadratic fit
# NB can no longer use abline to add the fitted model to the data. Instead,
# we use the predict() function, which takes the fitted model and new set of 
# idealised explanatory (x) data, and predicts the corresponding estimated
# y values which represent the model predictions.
dev.new()
plot(x,y1,main="",bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")
new.x <- 1:max(x)
new.x2 <- new.x^2
quad.y <- predict(m2,list(x=new.x,x2=new.x2))
lines(new.x,quad.y,lwd=2,lty=2,col=2)

# plot the residuals of the quadratic
dev.new()
plot(x,resid(m2),main="residuals of quadratic linear model",
      bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")
abline(0,0,lwd=2,lty=2,col=2)

# ------------------------------------------------------------------------------
# Cubic
# ------------------------------------------------------------------------------

# plot the data with a cubic fit
dev.new()
plot(x,y1,main="",bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")
new.x <- 1:max(x)
new.x2 <- new.x^2
new.x3 <- new.x^3
cubic.y <- predict(m3,list(x=new.x,x2=new.x2,x3=new.x3))
lines(new.x,cubic.y,lwd=2,lty=2,col=2)

# plot the residuals of the cubic
dev.new()
plot(x,resid(m3),main="residuals of cubic linear model Y~X",
      bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")
abline(0,0,lwd=2,lty=2,col=2)


# ------------------------------------------------------------------------------
# Y~log(X)
# ------------------------------------------------------------------------------

# plot the data with a log(X) fit
dev.new()
plot(x,y1,main="",bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")
new.x <- 1:max(x)
logx.y <- predict(mlog,list(x=new.x))
lines(new.x,logx.y,lwd=2,lty=2,col=2)

# plot the residuals of the log(X) model
dev.new()
plot(x,resid(mlog),main="residuals of linear model Y~log(X)",
      bty="L",cex.axis=1.3,cex.lab=1.3,ylab="Y",xlab="X")
abline(0,0,lwd=2,lty=2,col=2)



