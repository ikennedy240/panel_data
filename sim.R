#Set the intercept
b0 <- 2
#Set phi
rho <- .16
rho_2 <- -.45
#Set the number of periods
n <- 50
t <- seq(0,n)
y1 <- rep(0,n)
for (i in 3:length(t)){
y1[i] <- mean(y1) + (y1[i-1]-mean(y1))*rho + (y1[i-2]-mean(y1))*rho_2 + rnorm(1,0,15)
}
plot(y1,type="l", col="red",ylab="y",xlab="Time")
acf(y1)
pacf(y1)
for (i in 3:length(t)){
y2[i] <- y2[i-1]*phi + y2[i-2]*phi_2 + b1*t[i] + b0 + rnorm(1,0,15)
}
plot(y2,type="l", col="red",ylab="y",xlab="Time")

par(mfrow=c(2:1))
acf(y1)
acf(y2)
par(mfrow=c(2:1))
pacf(y1)
pacf(y2)
