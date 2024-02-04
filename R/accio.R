#' Accio - Summon Rows that Meet Specific Conditions
#'
#' @description
#' `accio` allows you to summon rows from a data frame that meet certain
#' conditions, akin to the Summoning Charm in the wizarding world. This function
#' wraps `dplyr::filter()`, enabling the selective retrieval of observations
#' based on specified criteria.
#'
#' @param .data A data frame or tibble to filter.
#' @param ... Additional arguments that define the filtering conditions. Each
#' condition can be a logical expression that rows must satisfy to be included
#' in the output.
#'
#' @return A data frame or tibble containing only the rows that meet the
#' filtering conditions specified in `...`.
#'
#' @examples
#' \dontrun{
#' library(dplyr)
#' # Assuming star_data is a data frame with columns: name, house, and year
#' accio(star_data, house == "Gryffindor")
#'}
#' @export
#' @import dplyr
#' @family data manipulation functions
accio <- function(.data, ...) {
  dplyr::filter(.data, ...)
}
