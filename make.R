files <- list.files(here::here(), pattern = "*.Rmd$|*.R$|*.cpp$",
  recursive = TRUE)
files <- files[!grepl("install\\.R$", files)]
files <- files[!grepl("^data-raw", files)]
files <- files[!grepl("^exercises\\/", files)]

folders <- c("data", "functions", "parallel", "performance", "rcpp")

if (file.exists("exercises"))
  stop("Stopping unless you manually delete the 'exercises' folder.")

dir.create("exercises", showWarnings = FALSE)
purrr::walk(folders, function(x)
  dir.create(file.path("exercises", x), showWarnings = FALSE))
file.copy("data", file.path("exercises"), recursive = TRUE)

remove_exercises <- function(x) {
  f <- readLines(x)
  f_ex <- ifelse(grepl("# exercise", f), "# exercise", f)
  f_ex <- ifelse(grepl("<!-- exercise -->", f_ex), "<!-- exercise -->", f_ex)
  f_ex <- ifelse(grepl("// exercise", f_ex), "// exercise", f_ex)
  writeLines(as.character(f_ex), con = here::here("exercises", x))
}
purrr::walk(files, remove_exercises)

## knit all exercises (slow)
# f <- files[grepl("\\.Rmd$", files)]
# purrr::walk(f, rmarkdown::render)
