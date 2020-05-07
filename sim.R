#Set the intercept
b0 <- 2
#Set phi
rho <- .5
rho_2 <- -.4
#Set the number of periods
n <- 50
t <- seq(0,n)
y1 <- rep(0,n)
for (i in 3:length(t)){
y1[i] <- mean(y1) + (y1[i-1]-mean(y1))*rho + (y1[i-2]-mean(y1))*rho_2 + rnorm(1,0,15)
}

for (i in 3:length(t)){
  y1[i] <- mean(y1) + (y1[i-1]-mean(y1))*rho + rnorm(1,0,15)
}
acf(y1)
pacf(y1)
#Set the intercept
b0 <- 0
#Set phi
phi <- .4
phi_2 <- -.1
n <- 50
t <- seq(0,n)
y2 <- rep(0,n)

for (i in 3:length(t)){
y2[i] <- y2[i-1]*phi + y2[i-2]*phi_2 + b0 + rnorm(1,0,15)
}

acf(y2)

pacf(y2)
