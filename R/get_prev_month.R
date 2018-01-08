#' Get Previous Month
#' 
#' gets the current month and subtracts one month b/c pulling data from
#' previous month
#' input doesn't matter, will always give previous month in a character string
#' with a leading 0 for single digit months
#' @return a string containing the numeric value of the pervious month


get_prev_month <- function(x) {

  x <- lubridate::today()
  y <- stringr::str_sub(x, 6, 7)
  month <- as.numeric(y) - 1
  month <- ifelse(month < 10, paste0('0', as.character(month)), month)
  month <- ifelse(month == "00", "12", month)
  month

  }
