#' Convert a LaTeX math formula to an SVG object
#'
#' This function converts a LaTeX math formula to an SVG object. All text in the
#' resulting SVG is in the form of SVG `<path>`s. The single-length vector
#' is a standalone `<svg>` tag with the following attributes in place:
#' \itemize{
#' \item xmlns:
#' \item width and height: automatically set in `ex` units
#' \item viewBox: automatically set to provide some padding around the formula
#' \item stroke and fill: the stroke width is `0` and the fill color is set to
#' the `currentColor`
#' }
#'
#' @param eqn The LaTeX equation text.
#' @param preview Should a preview of the formula be shown? By default this is
#'   `TRUE`.
#'
#' @examples
#' # Take LaTeX code for the Heaviside
#' # Function and convert that to SVG
#' heaviside <-
#'   eqn2svg(
#'     eqn = l_time_domain[25],
#'     preview = FALSE
#'   )
#'
#' # Take LaTeX code for the Laplace
#' # transform of that function and
#' # obtain an SVG
#' heaviside_laplace <-
#'   eqn2svg(
#'     eqn = l_laplace_s_domain[25],
#'     preview = FALSE
#'   )
#' @return A length 1 character vector containing `<SVG>` tag text.
#'
#' @export
eqn2svg <- function(eqn,
                    preview = TRUE) {

  base_url <- "https://math.now.sh?"

  url <- paste0(base_url, "from=", eqn)

  svg <- readLines(url, warn = FALSE)[3]

  if (isTRUE(preview)) {
    svg %>% htmltools::HTML() %>% htmltools::html_print()
  }

  svg
}
