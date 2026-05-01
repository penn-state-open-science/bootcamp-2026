detect_blank_college <- function(df) {
  assertthat::assert_that(tibble::is_tibble(df))
  
  df |>
    dplyr::filter(is.na(college)) |>
    dplyr::select(name, dept)
}
