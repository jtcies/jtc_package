#' PYN Theme
#'
#' A minimal theme for most charts that uses PYN's fonts
#'

theme_pyn<- function(base_family = "Century Gothic",
                     base_size = 11,




  text = element_text(family = 'Century Gothic'),
                      axis.title.y = element_text(hjust = 1, vjust = 2),
                      axis.title.x = element_text(hjust = 1),
                      plot.title = element_text(hjust = 0))

