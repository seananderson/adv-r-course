#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericVector sumCwithR(NumericVector x) {
  Environment my_env = Environment::global_env();
  Function sumR = my_env["sumR"];
  return sumR(x);
}
