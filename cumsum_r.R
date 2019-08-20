cumsum_r <- function(x) {
  acc <- 0 # initialize an accumulator variable
  res <- numeric(length(x)) # initialize result vector
  for (i in seq_along(x)) {
    acc <- acc + x[i]
    res[i] <- acc
  }
  res
}
