#' Add PYN colors to a chart
#' 
#' 
#' Theme has 8 colors. If you need more than that, you will need to set theme 
#' directly using scale_*_manual(values = jtc_pal[[XX]])
#' 
#' @param type "fill" for use with the fill aesthetic; 
#' "color" for use with the color aesthetic
#' @param scale "jtc" (default)
#' @param rev reverse the order of the colors; defaults to false
#' @return a manual scale object
#' 

color_jtc <- function(type = "fill",
                      scale = "jtc", 
                      rev = FALSE) {
  
  # can be extedned if necessary
  key = list("jtc" = jtc_pal[c(1, 3, 4, 2, 5, 7, 8, 6)])
  
  if (type == "fill") {
    if (!rev) {
      ret <- scale_fill_manual(values = key[[scale]])
    } else {
      ret <- scale_fill_manual(values = rev(key[[scale]]))
    }
  }
  
  if (type == "color") {
    if (!rev) {
      ret <- scale_color_manual(values = key[[scale]])
    } else {
      ret <- scale_color_manual(values = rev(key[[scale]]))
    }
  }
  
  ret
  
}

