#' Add PYN colors to a chart
#' 
#' 
#' "PYN" theme has seven colors, the others have 4. If you need more than that,
#' you will need to set theme directly using 
#' scale_*_manual(values = pyn_pal[[XX]])
#' 
#' @param type "fill" for use with the fill aesthetic; 
#' "color" for use with the color aesthetic
#' @param scale "pyn" (default), "reds", "yellows", "blues", "greys"
#' @param rev reverse the order of the colors; defaults to false
#' @return a manual scale object
#' 

color_pyn <- function(type = "fill",
                      scale = "pyn", 
                      rev = FALSE) {
  
  key = list("pyn"      = pyn_pal[c(1:6)],
             "reds"     = pyn_pal[c(19, 13, 1, 7)], 
             "yellows"  = pyn_pal[c(20, 14, 2, 8)], 
             "blues"    = pyn_pal[c(21, 15, 3, 9)], 
             "greys"    = pyn_pal[c(22, 16, 4, 10)])

  
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

