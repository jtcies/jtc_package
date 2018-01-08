#' NA to
#'
#' A function that changes an NA variable to any replacement that is specified
#'@return a vector with NA values change to replacement value

na_to <- function(var, rep) {
  
  x[is.na(x)] <- rep
  x

}