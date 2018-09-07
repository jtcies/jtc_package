.onLoad <- function(libname, pkgname) {
  
  # register fonts to use in plots
  library(showtext)
  font_add_google("Libre Franklin", "franklin")
  showtext_auto()

}