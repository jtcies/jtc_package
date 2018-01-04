#' PYN Theme
#'
#' A minimal theme for most charts that uses PYN's fonts
#'

theme_pyn<- function(base_family = "Century Gothic",
                     base_size = 12,
                     axis.title.y = element_text(hjust = 1, vjust = 2),
                     axis.title.x = element_text(hjust = 1),
                     plot.title = element_text(hjust = 0, size = 18),
                     plot.subtitle = element_text(hjust = 0, size = 13),
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
    legend.position = legend.position
  )

  if (background == "light") {

    ret <- ret + theme(panel.background = element_rect(fill = "#ececec",
                                                       color = "#ececec"),
                       panel.grid.major = element_line(color = "#888888",
                                                       linetype = 2),
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

