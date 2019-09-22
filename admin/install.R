# Because of our limited time, it is critical that you arrive with all of the
# necessary software and R packages installed. If you are having any issues with
# this, please get in touch with me (sean@seananderson.ca) before the workshop.
# The following R code should walk you through it.
#
# I suggest having the latest version of R, version 3.6.0.
# Check with:
sessionInfo()

# You can get the latest version at:
# https://cran.r-project.org/

# I suggest you arrive with the latest version of RStudio
# (version 1.2.1578 or greater).
# You can check with RStudio -> About RStudio on a Mac
# or Help -> About RStudio on Windows.
#
# You can get the latest version at:
# https://www.rstudio.com/products/rstudio/download/preview/
#
# If you know some other text editor really well (e.g., Vim, Emacs, or Sublime
# Text) and would rather use that, that's fine too.

# Install the following R packages:
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
  "glue"
))

# It is critical that you have a working C++ compiler:
# On Windows, install Rtools:
# https://cran.r-project.org/bin/windows/Rtools/

# On Mac, open /Applications/Utilities/Terminal.app and run:
# xcode-select --install

# On Linux, run `sudo apt-get install r-base-dev` or similar.

# To make sure you now have a working C++ compiler, in R run:
Rcpp::evalCpp("1 + 1")

# It should return `2` without any warnings or errors.

# Don't forget to review the Names and values, Vectors, Subsetting, and Control
# flow sections of the Advanced R book by Hadley Wickham
# <https://adv-r.hadley.nz/> and be familiar with the basics of ggplot2 and
# dplyr. See <https://r4ds.had.co.nz/data-visualisation.html> and
# <https://r4ds.had.co.nz/transform.html>.
