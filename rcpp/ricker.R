ricker_r <- function(n, r = 0.8, K = 10.0, x0 = 1.0, sigma = 0.2) {
  x <- numeric(length = n)
  x[1] <- x0
  e_i <- rlnorm(n, 1, sigma)
  for (i in seq(2, n)) {
    x[i] <- x[i - 1] * exp(r * (1 - x[i - 1] / K)) * e_i[i]
  }
  x
}
