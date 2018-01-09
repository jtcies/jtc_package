#' Make percent
#' 
#' converts real number to a string with a percent sign
#' good for formatting tables and charts for presentation
#' 
#' @param dec number of decimal places to include; defaults to one
#' 
#' 

make_pct <- function(x, dec = 1) {
  
  x <- round(x, dec + 2) * 100
  x <- paste0(x, "%")
  x
  
}