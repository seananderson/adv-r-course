Rcpp::sourceCpp("cumsum.cpp")

x <- sample(seq_len(1000), 5000, replace = TRUE)
cumsum(x)
cumsum_rcpp(x)

b <- bench::mark(cumsum(x), cumsum_rcpp(x))
b
plot(b)

cumsum_r <- function(x) {
  acc <- 0 # initialize an accumulator variable
  res <- numeric(length(x)) # initialize result vector
  for (i in seq_along(x)) {
    acc <- acc + x[i]
    res[i] <- acc
  }
  res
}

cumsum_r2 <- function(x) {
  acc <- 0 # initialize an accumulator variable
  res <- c()
  for (i in seq_along(x)) {
    acc <- acc + x[i]
    res <- c(res, acc)
  }
  res
}

cumsum_r(x)
cumsum_r2(x)

# install.packages("ggbeeswarm")
b <- bench::mark(cumsum_r(x), cumsum_rcpp(x), cumsum(x), cumsum_rcpp_sugar(x))
View(b)
plot(b)

x <- sample(seq_len(1000), 1000, replace = TRUE)
b <- bench::mark(cumsum_r2(x), cumsum_r(x))
plot(b)
b


source("cumsum_r2.R")
x <- sample(seq_len(1000), 2e4, replace = TRUE)
profvis::profvis({
  cumsum_r2(x)
})

source("cumsum_r.R")
x <- sample(seq_len(1000), 1e6, replace = TRUE)
profvis::profvis({
  cumsum_r(x)
})

profvis::profvis({
  x <- sample(seq_len(1000), 1e6, replace = TRUE)
  cumsum_r(x)
})

profvis::profvis({
  dat <- data.frame(
    x = rnorm(5e4),
    y = rnorm(5e4)
  )

  plot(x ~ y, data = dat)
  m <- lm(x ~ y, data = dat)
  abline(m, col = "red")
})
