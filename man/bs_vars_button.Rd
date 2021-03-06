% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vars-bootstrap.R
\name{bs_vars_button}
\alias{bs_vars_button}
\title{Bootstrap button variables}
\usage{
bs_vars_button(
  font_weight = NULL,
  default_color = NULL,
  default_bg = NULL,
  default_border = NULL,
  primary_color = NULL,
  primary_bg = NULL,
  primary_border = NULL,
  success_color = NULL,
  success_bg = NULL,
  success_border = NULL,
  info_color = NULL,
  info_bg = NULL,
  info_border = NULL,
  warning_color = NULL,
  warning_bg = NULL,
  warning_border = NULL,
  danger_color = NULL,
  danger_bg = NULL,
  danger_border = NULL,
  link_disabled_color = NULL,
  border_radius_base = NULL,
  border_radius_large = NULL,
  border_radius_small = NULL
)
}
\arguments{
\item{font_weight}{Text font weight.}

\item{default_color}{Text color for default buttons.}

\item{default_bg}{Background color for default buttons.}

\item{default_border}{Border color for default buttons.}

\item{primary_color}{Text color for primary buttons.}

\item{primary_bg}{Background color for primary buttons.}

\item{primary_border}{Border color for primary buttons.}

\item{success_color}{Text color for success buttons.}

\item{success_bg}{Background color for success buttons.}

\item{success_border}{Border color for success buttons.}

\item{info_color}{Text color for info buttons.}

\item{info_bg}{Background color for info buttons.}

\item{info_border}{Border color for info buttons.}

\item{warning_color}{Text color for warning buttons.}

\item{warning_bg}{Background color for warning buttons.}

\item{warning_border}{Border color for warning buttons.}

\item{danger_color}{Text color for danger buttons.}

\item{danger_bg}{Background color for danger buttons.}

\item{danger_border}{Border color for danger buttons.}

\item{link_disabled_color}{Color for disabled link.}

\item{border_radius_base}{Button rounded corner.}

\item{border_radius_large}{Large button rounded corner.}

\item{border_radius_small}{Small button rounded corner.}
}
\value{
a \code{list} that can be used in \code{\link{create_theme}}.
}
\description{
Those variables can be used to customize
 buttons (e.g. \code{\link[shiny:actionButton]{shiny::actionButton}})
 in Bootstrap and Bootswatch themes.
}
\examples{
bs_vars_button(
  default_color = "#FFF",
  default_bg = "#112446",
  default_border = "#FFF",
  primary_color = "#112446",
  primary_bg = "#FFF",
  primary_border = "#112446",
  border_radius_base = 0
)

if (interactive()) {
  library(shiny)

  ui <- fluidPage(
    use_theme(
      create_theme(
        theme = "default",
        bs_vars_button(
          default_color = "#FFF",
          default_bg = "#112446",
          default_border = "#FFF",
          primary_color = "#112446",
          primary_bg = "#FFF",
          primary_border = "#112446",
          border_radius_base = 0
        ),
        output_file = NULL
      )
    ),
    tags$h1("Custom buttons"),
    actionButton("button1", "This is a default button"),
    actionButton(
      "button2", "This is a primary button",
      class = "btn-primary"
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}
}
