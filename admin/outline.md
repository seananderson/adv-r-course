---
title: Advanced R Workshop
author: Sean Anderson
date: "2019-08-28"
output: pdf_document
fontsize: 11pt
---

# Prior knowledge

Participants will be expected to have reviewed a subset of the Foundations sections of the Advanced R book by Hadley Wickham <https://adv-r.hadley.nz/> (Names and values, Vectors, Subsetting, and Control flow) prior to attending the course and be familiar with the basics of ggplot2 and dplyr. See <https://r4ds.had.co.nz/data-visualisation.html> and <https://r4ds.had.co.nz/transform.html>.

# Course topics

Topics that I intend to cover include the following, but are open to some modification based on input from workshop participants beforehand.

# Introduction and foundations refresher

Goals:

- Ensure everyone gets a broad overview of the topics we will be covering and the likely relative importance of the various topics.
- Make sure everyone has understood the important elements of the Foundations section (Names and values, Vectors, Subsetting, and Control flow) of Hadley's Advanced R book through some warm up exercises.
- Review any questions people had about the exercises in those sections.
- Make sure everyone is warmed up with R, engaged, and familiar with their neighbors.

# Functions
  
Goals:

- Understand why writing functions is useful.
- Be able to identify the three building blocks of a function.
- Understand the concepts of lexical scoping, lazy evaluation, and dotdotdot.
- Know what a prefix, infix, replacement, and special function is.
- Be able to use errors, warnings, and `on.exit()`.
- Be able to identify characteristics of well-written functions (purpose, naming, length, local vs. global variables).

# Debugging functions

Goals:

- Understand what function debugging is and why effective strategies are important.
- Gain an overview of available debugging strategies and tools in R.
- Become familiar with `debug()`, `debugonce()`, `browser()`, R Studio's 'dot' debugging.
- Learn to navigate the debugger via the keyboard and via R Studio's buttons.
- Practice debugging basic functions.
- Learn to debug a function from an installed R package.

# Apply functions and the purrr package

Goals:

- Be able to explain what "apply" functions are and why they are useful.
- Be able to apply a basic function to a list or vector with `purrr::map()`.
- Understand what anonymous functions are and where they are useful.
- Gain an overview of the `purrr::map()` output variants and what they do. `purrr::map_dfr()` etc.
- Become familiar with other multi-input purrr functions: `purrr::map2()`,`purrr::pmap()`.
- Become aware of the breadth of other functions available in purrr (e.g. `purrr::walk()`, `purrr::pluck()`)

# List-column data frames and other split, apply, combine strategies

Goals:

- Understand what a list-column data frame is and why it can be useful.
- Gain experience using list-column data frames for basic computation.
- Become aware of other "split, apply, combine" strategies

# Performance: profiling

Goals:

- Understand what code profiling is and why it's important.
- Gain familiarity with using the profvis package.
- Practice profiling some R functions.

\clearpage

# Performance: benchmarking

Goals:

- Understand what benchmarking is and why it's important.
- Gain familiarity with using the bench package.
- Practice benchmarking some R functions.

# Performance: parallel processing

Goals:

- Understand when parallel processing can be useful.
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

# Performance: Rcpp

Goals:

- Understand when translating R code into C++ via
  Rcpp might be useful.
- Become familiar with the basics of C++ and Rcpp syntax.
- Become familiar with `evalCpp()`, `cppFunction()`, and `sourceCpp()`.
- Understand how to get common types of data into and out of Rcpp functions.
- Understand how to call R functions from within C++.
- Practice translating very basic R functions into C++ via Rcpp.
- Practice identifying a bottleneck via profiling, creating an Rcpp
  function, and benchmarking the resulting function.
- Practice finding and fixing C++/Rcpp bugs.
- Gain an overview of some resources for learning more.

<!--
# Quick introduction to R package development

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
-->
