#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
void rcpp_rcout(
  Rcpp::NumericVector v){

  // printing value of vector
  Rcpp::Rcout << "The value of v: " << v << "\n";

  // printing error message
  Rcpp::Rcerr << "Error message\n";
}
