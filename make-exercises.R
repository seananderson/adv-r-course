files <- list.files(here::here(), pattern = "*.Rmd$|*.R$|*.cpp$",
  recursive = TRUE)
ignore <- c("install\\.R$", "^data-raw", "^exercises\\/", "^make-exercises\\.R$")
for (i in seq_along(ignore)) files <- files[!grepl(ignore[i], files)]

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
  f_ex <- purrr::map_chr(f_ex, ~
      gsub('here::here\\(\"', 'here::here\\(\"exercises/', .x))
  writeLines(as.character(f_ex), con = here::here("exercises", x))

}
purrr::walk(files, remove_exercises)

## knit all exercises (slow)
# f <- files[grepl("\\.Rmd$", files)]
# purrr::walk(f, rmarkdown::render)
