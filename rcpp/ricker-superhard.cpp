#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
Rcpp::NumericVector ricker_cpp(int n, double r = 0.8, double K = 10.0, // exercise
  double x0 = 1.0, double sigma = 0.2) { // exercise
  Rcpp::NumericVector x(n); // exercise
  x[0] = x0; // exercise
  Rcpp::NumericVector e_i = Rcpp::rlnorm(n, 1, sigma); // exercise
  for (int i = 1; i < n; i++) { // exercise
    x[i] = x[i-1] * exp(r * (1 - x[i-1] / K)) * e_i[i] ; // exercise
  } // exercise
  return x; // exercise
}

// Hint: you'll need Rcpp::rlnorm()
