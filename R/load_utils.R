#' Fix Names
#'
#' Changes the column names of a data frame, removing any non-alphanumeric
#' characters and changing them to an underscore
#' @return a data frame with formatted column names

fix_names <- function(df) {
  
  names(df) <- tolower(names(df))
  names(df) <- string::str_replace_all(names(df), "(?![A-z0-9]).", "_")
  
  df
  
}