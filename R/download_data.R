#' download_data
#' 
#' Script to download data about registrations and presenters.
#' Used in _quarto.yml as a pre-render parameter.

source("R/download_registration_data.R")

# participant registration
download_registration_data(psu_id = "rog1@psu.edu")

download_registration_data(psu_id = "rog1@psu.edu", sheet_name = "presenters",
                           registration_fn = "presenters-2026.csv")