f <- function() {
  profvis::pause(0.1)
  g()
  h()
}
g <- function() {
  profvis::pause(0.1)
  h()
}
h <- function() {
  profvis::pause(0.1)
}
