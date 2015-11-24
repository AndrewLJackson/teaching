rm(list=ls())
graphics.off()


# define some coefficients for the nth-order polynomials we will define later

beta <- c(1,-1,0.2,-0.3,-0.05,0.02)

# create the x sequence for which we will evaluate our functions
x <- seq(-5,5,length=1000)


y1 <- beta[1]*1 + 0*x # y1 is just the intercept only model

y2 <- beta[1]*1 + beta[2]*x

y3 <- beta[1]*1 + beta[2]*x + beta[3]*x^2

y4 <- beta[1]*1 + beta[2]*x + beta[3]*x^2 + beta[4]*x^3

y5 <- beta[1]*1 + beta[2]*x + beta[3]*x^2 + beta[4]*x^3 + beta[5]*x^4

y6 <- beta[1]*1 + beta[2]*x + beta[3]*x^2 + beta[4]*x^3 + beta[5]*x^4 + beta[6]*x^5


dev.new()
par(mfrow=c(2,3))
plot(x,y1,type="l",lwd=2,cex.axis=1.3)
plot(x,y2,type="l",lwd=2,cex.axis=1.3)
plot(x,y3,type="l",lwd=2,cex.axis=1.3)
plot(x,y4,type="l",lwd=2,cex.axis=1.3)
plot(x,y5,type="l",lwd=2,cex.axis=1.3)
plot(x,y6,type="l",lwd=2,cex.axis=1.3)
