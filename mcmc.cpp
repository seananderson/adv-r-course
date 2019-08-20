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
NumericVector my_dnorm( NumericVector x, NumericVector means, NumericVector sds, int lg){
  int n = x.size() ;
  NumericVector res(n) ;
  for( int i=0; i<n; i++)
    res[i] = R::dnorm( x[i], means[i], sds[i], lg ) ;
  return res ;
}

// [[Rcpp::export]]
Rcpp::NumericVector mcmc_mh_rcpp(NumericVector x, int n) {

    NumericVector previous_proposal = 0.0;
    double jump_sd = 3.0;
    double sigma = 2.0;
    NumericVector proposal = 1.0;
    NumericVector log_like_proposal(1);
    NumericVector log_like_previous(1);
    NumericVector log_like_prior_proposal(1);
    NumericVector log_like_prior_previous(1);
    NumericVector log_posterior_proposal(1);
    NumericVector log_posterior_previous(1);
    NumericVector prob_ratio(1);

    Rcpp::NumericVector out(n);

  for (int i = 1; i < n; i++) {
// Run the section from here to the bottom repeatedly:
    // proposal = Rcpp::rnorm(1, previous_proposal, jump_sd)(0);
// ----------------------------------------------------------------

    log_like_proposal = sum(my_dnorm(x, proposal, sigma, true));
    log_like_previous = sum(my_dnorm(x, previous_proposal, sigma, true));
// ----------------------------------------------------------------

    log_like_prior_proposal = sum(my_dnorm(proposal, 0.0, jump_sd, true));
    log_like_prior_previous = sum(my_dnorm(previous_proposal, 0.0, jump_sd, true));
// ----------------------------------------------------------------

// Combine the log-prior with the log-likelihood to get a value that is
// proportional to the posterior probability of that parameter value given the
// data:
    log_posterior_proposal = log_like_prior_proposal + log_like_proposal;
    log_posterior_previous = log_like_prior_previous + log_like_previous;
// ----------------------------------------------------------------

// Calculate the ratio of the proposal and previous probabilities:
      prob_ratio = exp(log_posterior_proposal) / exp(log_posterior_previous);
// ----------------------------------------------------------------

// If the probability ratio is > 1, then always accept the new parameter values.
// If the probability ratio is < 1, then accept the new parameter values in
// proportion to the ratio.
        if (runif(1)[1] < prob_ratio[1]) {
          previous_proposal = proposal;
        } else {
          previous_proposal = previous_proposal;
        }
// ----------------------------------------------------------------

        out[i] = previous_proposal[1];
  }
}

// http://dirk.eddelbuettel.com/code/rcpp/Rcpp-quickref.pdf
