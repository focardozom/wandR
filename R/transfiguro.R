#' Transfiguro - Transform or Add New Variables to a Data Frame
#'
#' @description
#' `transfiguro` magically transforms or adds new variables to a data frame,
#' mimicking the functionality of `dplyr::mutate()`. Use this function to
#' seamlessly modify or extend your data frame with new calculations or
#' transformations, all within the enchanting world of Harry Potter-themed data analysis.
#'
#' @param .data A data frame or tibble to be transformed.
#' @param ... Additional arguments specifying the transformations to be applied.
#' Each argument can be a new column name followed by a formula to calculate its values.
#'
#' @return A transformed data frame or tibble with the new or modified variables.
#'
#' @examples
#' \dontrun{
#' library(dplyr)
#' # Assuming star_data is a data frame with columns: name, house, and year
#' transfiguro(star_data, age_next_year = year + 1)
#'}
#' @export
#' @import dplyr
#' @family data transformation functions
transfiguro <- function(.data, ...) {
  dplyr::mutate(.data, ...)
}
