#' Count
#' counts of variables for each non-numeric column
#'
#' @return a list of counts for each non-numeric column

count_all <- function(dat) {
  drop_cols <- as.logical(lapply(dat, is.numeric))
  dat <- dat[!drop_cols]
  lapply(dat, table) 
}