library(Rcpp)
?sourceCpp

cppFunction(
  'int fibonacci(const int x) {
        if (x == 0) return(0); 
        if (x == 1) return(1);
        return (fibonacci(x - 1)) + fibonacci(x - 2);
    }')

fibonacci(8)

cppFunction(
  'int fibonacci(const int x) {
        if (x == 0) return(0); 
        if (x == 1) return(1);
        return (fibonacci(x - 1)) + fibonacci(x - 2);
    }')


f <- function(n) {
  if (n < 2) return(n)
  return(f(n-1) + f(n-2))
}
sapply(0:10, f)
f(6)

Rcpp::cppFunction("int g(int n) {
  if (n < 2) return(n);
  return(g(n-1) + g(n-2)); }")

sapply(0:10, g)

rbenchmark::benchmark(f(20), g(20))
