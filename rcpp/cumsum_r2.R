cumsum_r2 <- function(x) {
  acc <- 0 # initialize an accumulator variable
  res <- c()
  for (i in seq_along(x)) {
    acc <- acc + x[i]
    res <- c(res, acc)
  }
  res
}
