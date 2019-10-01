---
title: Advanced R Workshop
author: Sean Anderson
date: "2019-10-01 and 2019-10-02"
output: pdf_document
fontsize: 11pt
---

# Software

Because of our limited time, it is critical that you arrive with all of the
necessary software and R packages installed. If you are having any issues with
this, please get in touch with me\
(<sean@seananderson.ca>) before the workshop.
The following R code should walk you through it.

I suggest having the latest version of R, version 3.6.0.
Check with:

```r
sessionInfo()
```

You can get the latest version at: <https://cran.r-project.org/>

I suggest you arrive with the latest version of RStudio
(version 1.2.1578 or greater).
You can check with RStudio `->` About RStudio on a Mac
or Help `->` About RStudio on Windows.

You can get the latest version at:
<https://www.rstudio.com/products/rstudio/download/preview/>

If you know some other text editor really well (e.g., Vim, Emacs, or Sublime
Text) and would rather use that, that's fine too.

Install the following R packages:

```r
install.packages(c(
  "tidyverse",
  "future",
  "future.apply",
  "bench",
  "ggbeeswarm",
  "tictoc",
  "profvis",
  "Rcpp",
  "usethis",
  "glue",
  "broom",
  "furrr"
))
```

It is critical that you have a working C++ compiler for the Rcpp exercises.

On Windows, install Rtools:
<https://cran.r-project.org/bin/windows/Rtools/>

On macOS, launch `/Applications/Utilities/Terminal.app` and run:

```
xcode-select --install
```

On Linux, run `sudo apt-get install r-base-dev` or similar.

To make sure you now have a working C++ compiler, in R run:

```r
Rcpp::evalCpp("1 + 1")
```

It should return `2` without any warnings or errors.

# Prior knowledge

Please review the Names and values, Vectors, Subsetting, and Control flow parts of the Foundations section of the Advanced R book by Hadley Wickham <https://adv-r.hadley.nz/> (just the ) prior to attending the course. Also, I will assume you are familiar with the basics of ggplot2 and dplyr. See <https://r4ds.had.co.nz/data-visualisation.html> and <https://r4ds.had.co.nz/transform.html>.

# Course topics

The following are goals for what I hope you will learn about the various topics. What we cover may deviate somewhat based on interest from the class and available time.

**Please make sure this matches your expectations and is appropriate for your current level of experience with R!** If this doesn't match your expectations, someone else on the waiting list will happily take your spot. :)

If there's something you would particularly like to see that isn't listed below, please get in touch before the workshop. Alternatively, if there's something listed below that you're really excited about and want to spend lots of time on, feel free to let me know: <sean@seananderson.ca>

# Day 1: Functions and functional programming

## Introduction and foundations refresher

Goals:

- Ensure everyone gets a broad overview of the topics we will be covering and the likely relative importance of the various topics.
- Make sure everyone has understood the important elements of the Foundations section (Names and values, Vectors, Subsetting, and Control flow) of Hadley's Advanced R book through some warm up exercises.
- Review any questions people had about the exercises in those sections.
- Make sure everyone is warmed up with R, engaged, and familiar with their neighbors.

## Functions
  
Goals:

- Understand why writing functions is useful.
- Be able to identify the three building blocks of a function.
- Understand the concepts of lexical scoping, lazy evaluation, and dotdotdot.
- Know what a prefix, infix, replacement, and special function is.
- Be able to use errors, warnings, and `on.exit()`.
- Be able to identify characteristics of well-written functions (e.g., naming, length, local vs. global variables, type stability).

## Debugging functions

Goals:

- Understand what function debugging is and why effective strategies are important.
- Gain an overview of available debugging strategies and tools in R.
- Become familiar with `debug()`, `debugonce()`, `browser()`, `trace()`, and R Studio's 'dot' debugging.
- Learn to navigate the debugger via the keyboard and via R Studio's buttons.
- Practice debugging basic functions.
- Practice debugging a function from an installed R package.

## Functional programming: iterating with functions via the purrr package

Goals:

- Be able to explain what "apply" functions are and why they are useful.
- Be able to apply a basic function to a list or vector with `purrr::map()`.
- Understand what anonymous functions are and where they are useful.
- Gain an overview of the `purrr::map()` output variants and what they do. `purrr::map_dfr()` etc.
- Become familiar with other multi-input purrr functions: `purrr::map2()`,`purrr::pmap()`.
- Become aware of the breadth of other functions available in purrr (e.g. `purrr::walk()`, `purrr::pluck()`)

## List-column data frames and other split, apply, combine strategies

Goals:

- Understand what a list-column data frame is and why it can be useful.
- Gain experience using list-column data frames for basic computation.
- Become aware of other "split, apply, combine" strategies.

## Tidy evaluation

Goals:

- Gain a basic understanding of what tidy evaluation is.
- Understand when tidy evaluation is necessary or useful.
- Understand how to use the basics of tidy evaluation when writing functions that use dplyr or ggplot2.

\clearpage

# Day 2: Performance

## Profiling

Goals:

- Understand what code profiling is and why it's important.
- Gain familiarity with using the profvis package.
- Practice profiling some R functions.

## Benchmarking

Goals:

- Understand what benchmarking is and why it's important.
- Gain familiarity with using the bench package.
- Practice benchmarking some R functions.

## Parallel processing

Goals:

- Understand when parallel processing can be useful.
- Understand the difference between multi-session and multi-core strategies.
- Become familiar with the future and future.apply packages.
- Gain an overview of the available `future::plan()`s: `sequential`, 
  `transparent`, `multiprocess`, `multisession`, `multicore`. 
  Know that `cluster` and `remote` exist.
- Understand a basic future example.
- Learn to iterate over the application of functions in parallel with the future.apply package.
- Understand a basic example of integrating future with dplyr and pipes.

## Rcpp

Goals:

- Understand when translating R code into C++ via Rcpp might be useful.
- Become familiar with the basics of C++ and Rcpp syntax.
- Become familiar with `evalCpp()`, `cppFunction()`, and `sourceCpp()`.
- Understand how to get common types of data into and out of Rcpp functions.
- Understand how to call R functions from within C++.
- Practice translating very basic R functions into C++ via Rcpp.
- Practice benchmarking the resulting functions.
- Practice finding and fixing basic C++/Rcpp bugs.
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
