#' Add JTC colors to a chart
#' 
#' scales for dark, light, and primary have 5 colors, color scales have three shades;
#' if more are needed, use scale_X_manual
#'
#' @param type "fill" for use with the fill aesthetic; 
#' "color" for use with the color aesthetic,
#' @param scale "primary" (default), "dark", "light", "greys", "blues", "oranges",
#' "tans", "yellows"
#' @param rev reverse the order of the colors; defaults to false
#' @return a manual scale object
#' 

color_jtc <- function(type = "fill",
                      scale = "primary", 
                      rev = FALSE) {
  
  # can be extedned if necessary
  key <- list(
    "primary" = jtc_primary[c(2, 3, 4, 5, 1)],
    "dark" = jtc_dark[c(2, 3, 4, 5, 1)],
    "light" = jtc_light[c(2, 3, 4, 5, 1)],
    "greys" = jtc_greys,
    "blues" = jtc_blues,
    "oranges" = jtc_oranges,
    "tans" = jtc_tans,
    "yellows" = jtc_yellows
  )

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

#' Create color pallete
#'
#' Adds color pallete to gloabl enviornment
#' already saved in the data, but this function allows 
#' pallete to be edited later
#'
#' @return a list of collor vectors saved to the global environment

create_pallete <- function() {
  
  jtc_greys <- c("#030303", "#4f4f4f", "#9c9c9c")
  jtc_blues <- c("#1f2e43", "#6b7a8f", "#b8c7dc")
  jtc_oranges <- c("#ab3c00", "#f7882f", "#ffd57c")
  jtc_tans <- c("#907b5e", "#dcc7aa", "#fffff7")
  jtc_yellows <- c("#ab7700", "#f7c331", "#ffff7e")
  
  jtc_primary <- c(jtc_greys[[2]], jtc_blues[[2]], jtc_oranges[[2]], 
                   jtc_tans[[2]], jtc_yellows[[2]])

  jtc_dark <- c(jtc_greys[[1]], jtc_blues[[1]], jtc_oranges[[1]], 
                jtc_tans[[1]], jtc_yellows[[1]])

  jtc_light <- c(jtc_greys[[3]], jtc_blues[[3]], jtc_oranges[[3]], 
                 jtc_tans[[3]], jtc_yellows[[3]])

  all <- list(
    "jtc_greys" = jtc_greys, 
    "jtc_blues" = jtc_blues, 
    "jtc_oranges" = jtc_oranges, 
    "jtc_tans" = jtc_tans, 
    "jtc_yellows" = jtc_yellows,
    "jtc_priamry" = jtc_primary, 
    "jtc_dark" = jtc_dark, 
    "jtc_light" = jtc_light
  )
  list2env(all, env = .GlobalEnv)
}