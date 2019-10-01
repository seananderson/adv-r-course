library(dplyr)

d <- readRDS("../../gfs/report/data-cache/pacific-cod.rds")
d <- d$survey_sets
dd <- filter(d, survey_abbrev == "SYN HS") %>%
  select(
    survey_abbrev, year, longitude, latitude, density_kgpm2,
    grouping_code
  ) %>%
  rename(survey = survey_abbrev)
saveRDS(dd, "data/pcod-syn-hs.rds")

dd2 <- filter(d, survey_abbrev %in% c("SYN HS", "SYN QCS", "SYN WCVI")) %>%
  select(
    survey_abbrev, year, longitude, latitude, density_kgpm2,
    grouping_code
  ) %>%
  rename(survey = survey_abbrev)
saveRDS(dd2, "data/pcod-syn-hs-qcs-wcvi.rds")

# ---------------

wiptv <- readr::read_csv(here::here("data-raw", "wip.csv"), skip = 4)
names(wiptv) <- tolower(make.names(names(wiptv)))
wp <- wiptv %>%
  tidyr::gather(key = YearC, value = pctWiP, dplyr::starts_with("X"), na.rm = TRUE) %>%
  dplyr::mutate(year = readr::parse_number(YearC)) %>%
  dplyr::select(-YearC, -indicator.name, -indicator.code, -country.code) %>%
  dplyr::rename(percent_wip = pctWiP, country = country.name) %>%
  dplyr::select(year, country, percent_wip)
names(wp) <- gsub("\\.", "_", names(wp))

saveRDS(wp, "data/wip.rds")
