#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
Rcpp::NumericVector ricker_cpp(int n) {
  Rcpp::NumericVector x(n);
  double r = 0.8;
  double K = 10.0;
  Rcpp::NumericVector e_i = Rcpp::rlnorm(n, 1, 0.2);
  x[0] = 1.0;
  for (int i = 1; i < n; i++) {
    x[i] = x[i-1] * exp(r * (1 - x[i-1] / K)) * e_i[i] ;
  }
  return x;
}
