#' PYN Theme
#'
#' A minimal theme for most charts that uses PYN's fonts
#'
#' @param background plot panel background; options are "blank", "light", 
#' or "dark"
#' @return a theme object

theme_jtc<- function(base_family = "franklin",
                     base_size = 14,
                     axis.title.y = element_text(hjust = 1, vjust = 2, face = "bold"),
                     axis.title.x = element_text(hjust = 1, face = "bold"),
                     plot.title = element_text(hjust = 0, size = 20, face = "bold"),
                     plot.subtitle = element_text(hjust = 0, size = 16),
                     legend.position = "right",
                     background = "blank") {

  ret <- ggplot2::theme_minimal()

  ret <- ret + ggplot2::theme(
    text = element_text(family = base_family,
                        size = base_size),
    axis.title.y = axis.title.y,
    axis.title.x = axis.title.x,
    plot.title = plot.title,
    plot.subtitle = plot.subtitle,
    legend.position = legend.position,
  )

  if (background == "light") {

    ret <- ret + theme(panel.background = element_rect(fill = "#ececec",
                                                       color = "#ececec"),
                       panel.grid.major = element_line(color = "#888888",
                                                       linetype = 3),
                       axis.line = element_line(color = "#4f4f4f"))

  } else if (background == "dark") {

    ret <- ret + theme(panel.background = element_rect(fill = "#4f4f4f4f",
                                                       color = "#ffffff"),
                       panel.grid.major = element_line(color = "#ececec",
                                                       linetype = 2),
                       panel.grid.minor = element_blank(),
                       axis.line = element_line(color = "#ececec"))

  }

  ret

}

