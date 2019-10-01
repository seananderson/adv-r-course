# Advanced R Workshop

This two-day workshop will cover advanced R topics including:

- writing functions (e.g., characteristics of well-written functions, lazy evaluation, error and warning handling)
- debugging strategies and tools
- succinctly applying functions to vectors with the `map()` family of functions within the 'purrr' package
- split-apply-combine strategies for applying functions to chunks of data (e.g., list-column data frames)
- using profiling tools to find code speed bottlenecks
- using benchmarking tools to compare code speed
- parallel processing approaches (with a focus on the 'future' package)
- using 'Rcpp' to link basic C++ code with R to eliminate bottlenecks

Prior to taking this workshop, participants will be expected to have reviewed a subset of the Foundations sections of the Advanced R book by Hadley Wickham https://adv-r.hadley.nz/ (Names and values, Vectors, Subsetting, and Control flow) and be familiar with the basics of ggplot2 and dplyr. See https://r4ds.had.co.nz/data-visualisation.html and https://r4ds.had.co.nz/transform.html.

See [admin/outline.md](https://github.com/seananderson/adv-r-course/blob/master/admin/outline.md) for an outline of learning goals and software requirements.

## Functions and functional programming

- Introduction and foundations refresher
  - intro.key
  - tools.key
- Functions
  - functions.key
  - adv-functions.key
- Debugging functions
  - debugging.key
  - debugging.Rmd
- Functional programming: iterating with functions via the purrr package
  - iteration.Rmd + purrr.key
- List-column data frames and other split, apply, combine strategies
  - list-columns.Rmd
- Tidy evaluation
  - tidy-eval.Rmd

## Performance

- Benchmarking
  - performance.key + benchmarking.Rmd
- Profiling
  - profiling.Rmd
- Parallel processing
  - parallel.key
  - futures-introduction.Rmd
  - future-bootstrap.Rmd
- Rcpp
  - rcpp.key
  - rcpp-introduction.Rmd

--------------------------

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.
