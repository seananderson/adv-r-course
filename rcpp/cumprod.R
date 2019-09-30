cumprod_r <- function(x) {
  n <- length(x)
  y <- numeric(length = n)
  y[1] <- x[1]
  for (i in 2:n) {
    y[i] <- y[i-1] * x[i]
  }
  return(y)
}
