#include <Rcpp.h>
using namespace Rcpp;

// This is a simple example of exporting a C++ function to R. You can
// source this function into an R session using the Rcpp::sourceCpp
// function (or via the Source button on the editor toolbar). Learn
// more about Rcpp at:
//
//   http://www.rcpp.org/
//   http://adv-r.had.co.nz/Rcpp.html
//   http://gallery.rcpp.org/
//

// [[Rcpp::export]]
NumericVector cumsum_rcpp(NumericVector x) {
  double acc = 0; // initialize an accumulator variable
  NumericVector res(x.size()); // initialize result vector
  for (int i = 0; i < x.size(); i++){
    acc += x[i];
    res[i] = acc;
  }
  return res;
}

// [[Rcpp::export]]
NumericVector cumsum_rcpp_sugar(NumericVector x){
  return Rcpp::cumsum(x); // compute + return result vector
}
