#' Engorgio - Spread Key-Value Pairs to Widen Data
#'
#' @description
#' `engorgio` spell expands your data frame, spreading key-value pairs across
#' multiple columns, thus making the dataset wider. It is akin to the magical
#' process of enlarging objects, but for data frames, using `tidyr::pivot_wider()`.
#' This function is particularly useful when you want to transform long-format
#' data into a wide-format, making it easier to analyze and visualize.
#'
#' @param data A data frame or tibble that you wish to transform into a wider format.
#' @param names_from The column in `data` that contains the variable names which
#' will be spread out across the new columns in the wider format.
#' @param values_from The column in `data` that contains the values to fill the
#' new columns created by spreading `names_from`.
#' @param ... Additional arguments passed on to `tidyr::pivot_wider()`.
#'
#' @return A wider data frame or tibble where key-value pairs specified by
#' `names_from` and `values_from` are spread across multiple columns, enlarging
#' the dataset horizontally.
#'
#' @examples
#' \dontrun{
#' library(tidyr)
#' # Assuming a data frame `long_data` with columns: id, category, value
#' engorgio(long_data, names_from = "category", values_from = "value")
#'}
#' @export
#' @importFrom tidyr pivot_wider
#' @family data transformation functions
engorgio <- function(data, names_from, values_from, ...) {
  tidyr::pivot_wider(data, names_from = {{names_from}}, values_from = {{values_from}}, ...)
}
