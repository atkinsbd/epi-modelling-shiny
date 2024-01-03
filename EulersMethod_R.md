```
x <- c(0)
deltat <- 0.1
times <- seq(from=0,to=5,by=deltat)

for (k in 2:length(times)){
  x_next = x[k-1] + 2*exp(2*times[k-1])*deltat
  x <- c(x,x_next)
}

x_true <- exp(2*seq(0, 5, 0.01))
plot(seq(0, 5, 0.01), x_true, type='l', col='blue', lwd=3)
lines(times, x, type='l', col='red', lwd=3, lty=2)
```

