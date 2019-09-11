# Foundations refresher

Goals: 
- Make sure everyone has understood the important elements of the Foundations section of Hadley's Advanced R book through some warm up exercises.
- Review any questions people had about the exercises of the Names and values, Vectors, Subsetting, and Control flow sections of the Foundations chapter.
- Make sure everyone is warmed up with R, engaged, and familiar with their neighbors.

# Introduction

Goals:
- Ensure everyone gets a broad overview of the topics we will be covering and the likely relative importance of the various topics.

# Functions
  
Goals: 
- Understand the building blocks of functions.
- Understand the concept of lexical scoping and lazy evaluation.
- Be able to identify characteristics of well-written functions (purpose, naming, length, purpose, local vs. global variables).
- Understand what an anonymous function is and where they are useful.

Examples:
- Trivial examples.
- ...

# Debugging functions

Goals:
- Understand what function debugging is and why effective strategies are important.
- Gain an overview of available debugging strategies and tools in R.
- Become familiar with `debug()`, `debugonce()`, `browser()`, R Studio's 'dot'.
- Learn to navigate the debugger via keyboard and via R Studio's buttons.
- Practice debugging basic functions.
- Learn to debug a function from an installed R package.

Examples:
- Trivial examples.
- ...

# Tidyverse, purrr, and apply functions

Goals:
- Make sure everyone is aware of the main dplyr verbs, joins, and scoped variants (brief).
- Be able to explain what an "apply" function is and when it is useful.
- Be able to apply a basic function to a list or vector with `purrr::map()`.
- Gain an overview of the `purrr::map` output variants and what they do. `purrr::map_dfr()` etc.
- Become familiar with other multi-input purrr functions: `purrr::map2()`,`purrr::pmap()`.
- Become aware of the breadth of other functions available in purrr (e.g. `purrr::walk()`, `purrr::pluck()`)

Examples:
- Look at list example data sets.
- Could work with women in politics data set.

# List-column data frames

Goals:
- Understand what a list-column data frame is and why it can be useful.
- Gain experience using list-column data frames for basic computation.

Examples:
- Calculating linear regression slope on women in politics data set through time by country.

# Performance: profiling

Goals:
- Understand what code profiling is and why it's important.
- Gain familiarity with using the profvis package.
- Practice profiling some R functions.

Examples:
- Pull from package documentation and book.

# Performance: benchmarking

Goals:
- Understand what benchmarking is and why it's important.
- Gain familiarity with using the bench package.
- Practice benchmarking some R functions.

Examples:
- Pull from package documentation and book.
- Naive `cumsum()`?

# Performance: parallel processing

Goals:
- Gain an understanding for when parallel processing might be useful.
- Understand the difference between multi-session and multi-core strategies.
- Gain a broad overview of the available parallel processing options in R.
- Understand a basic example with the foreach package.
- Become particularly familiar with the future and future.apply packages.
- Understand the available `future::plan()`s: `sequential`, 
  `transparent`, `multiprocess`, `multisession`, `multicore`. 
  Know that `cluster` and `remote` exist.
- Understand a basic future example.
- Learn to iterate over the application of a basic function in parallel
  with the future.apply package.
- Understand a basic example of integrating future with dplyr and pipes.
- Understand how to benchmark parallel vs. sequential code.

Examples:
- Trivial examples.
- Bootstrap confidence intervals on groundfish survey indices.

# Performance: Rcpp

Goals:
- Gain an understanding for when translating R code into C++ via
  Rcpp might be useful.
- Become familiar with the basics of C++ and Rcpp syntax.
- Become familiar with `evalCpp()`, `cppFunction()`, and `sourceCpp()`.
- Understand how to get common types of data into and out of Rcpp functions.
- Understand how to call R functions from within C++.
- Practice translating basic R functions into C++ via Rcpp.
- Practice identifying a bottleneck via profiling, creating an Rcpp
  function, and benchmarking the resulting function.
- Practice finding and fixing C++/Rcpp bugs. 
- Gain an overview of some resources for learning more.

Examples:
- Super basic examples.
- Fibonacci series.
- `cumsum()`
- Ricker logistic simulation.

# R package development

Goals:
- Understand why the R package format is useful.
- Understand the structure and elements that define an R package.
- Understand how to document functions with Roxygen.
- Gain familiarity with using devtools to develop R packages.
- Become familiar with including package data.
- Understand how to write an .Rmd package vignette.
- Write a very basic R package from scratch with all these elements.
- Gain a high-level overview of how to share an R package.
- Gain a high-level overview of unit testing and continuous integration with Travis.

Examples:
- Something like the my little pony example but more relevant to ecology or fisheries.
