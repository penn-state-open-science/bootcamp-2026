#' download_registration_data
#' 
#' Downloads registration data collected using Google Forms as a CSV.
download_registration_data <- function(csv_dir = "private/csv", 
                                       psu_id = NULL,
                                       reg_sheets_id = "1mM0rSuFS5_y2sQtU9AI9zm8kuOGeDzilJZdu1MUR8zk",
                                       sheet_name = "Form Responses 1",
                                       registration_fn = "registrations-2026.csv") {
  
  require(tibble)
  assertthat::is.string(csv_dir)
  if (!dir.exists(csv_dir)) {
    message("Creating missing `include/csv/`.")
    dir.create(csv_dir)
  }
  assertthat::is.writeable(csv_dir)
  
  assertthat::is.string(psu_id)
  googlesheets4::gs4_auth(email = psu_id)
  
  assertthat::is.string(reg_sheets_id)
  assertthat::is.string(sheet_name)
  registrations <- googlesheets4::read_sheet(reg_sheets_id,
                                             sheet = sheet_name)
  assertthat::assert_that(is_tibble(registrations))
  
  registration_full_fn <- file.path(csv_dir, registration_fn)
  assertthat::is.string(registration_full_fn)
  readr::write_csv(registrations, file = registration_full_fn)
  registration_full_fn
}