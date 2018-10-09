#' NA to
#'
#' A function that changes an NA variable to any replacement that is specified
#'@return a vector with NA values change to replacement value

na_to <- function(var, rep) {
  
  x[is.na(x)] <- rep
  x

}

#' Total missing
#'
#' Determine missingness in each column
#'@return a list with count of missing in each column

total_missing <- function(dat) {
  lapply(dat, function(x) sum(is.na(x)))
}