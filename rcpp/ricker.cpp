#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
Rcpp::NumericVector ricker_cpp(int n, double r = 0.8, double K = 10.0,
  double x0 = 1.0, double sigma = 0.2) {
  Rcpp::NumericVector x(n);
  x[0] = x0;
  Rcpp::NumericVector e_i = Rcpp::rlnorm(n, 1, sigma);
  for (int i = 1; i < n; i++) { // exercise
    x[i] = x[i-1] * exp(r * (1 - x[i-1] / K)) * e_i[i] ; // exercise
  } // exercise
  return x; // exercise
}
