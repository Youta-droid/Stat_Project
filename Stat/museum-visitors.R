# -----------------------------------------------------------------------------
# NOTE: This file is NOT part of the World Happiness analysis.
# It is a leftover data-preparation snippet for an unrelated example dataset
# (Munich open-data museum visitors), kept only as a reference for the
# usethis/use_data preparation pattern. The happiness project does not use it.
# -----------------------------------------------------------------------------

## code to prepare `museum-visitors` dataset goes here

url <- paste0(
  "https://opendata.muenchen.de/dataset/bfb4a286-bea5-4bfe-82ce-b9bd354284a5/",
  "resource/6c6a809e-91ee-4f3e-9268-a8b7bc38311c/download/",
  "monatszahlen2603_museen_16_03_26.csv"
)
museum_visitors_raw <- readr::read_csv(url)

museum_visitors <- museum_visitors_raw |>
  janitor::clean_names()   # WERT → wert, AUSPRAEGUNG → auspraegung, …

usethis::use_data(museum_visitors, overwrite = TRUE)
