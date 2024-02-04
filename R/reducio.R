#' Reducio - Condense Wide Data into Long Format
#'
#' @description
#' `reducio` magically condenses wide-format data into a longer, more detailed
#' format, mirroring the functionality of `tidyr::pivot_longer()`. This function
#' is ideal for gathering multiple columns into key-value pairs, thereby
#' stretching the data frame vertically and reducing its width.
#'
#' @param data A data frame or tibble that you wish to transform into a longer format.
#' @param cols Columns in `data` that you want to condense into longer format. Can
#' be specified using dplyr select helpers like `everything()`, `starts_with()`,
#' `ends_with()`, etc.
#' @param names_to The name of the new column in the long format that will contain
#' the names of the condensed columns. Defaults to `"name"`.
#' @param values_to The name of the new column in the long format that will contain
#' the values from the condensed columns. Defaults to `"value"`.
#' @param ... Additional arguments passed on to `tidyr::pivot_longer()`.
#'
#' @return A longer, more detailed data frame or tibble where specified wide-format
#' columns are condensed into two columns: one for the variable names (`names_to`)
#' and one for the values (`values_to`).
#'
#' @examples
#' \dontrun{
#' library(tidyr)
#' # Assuming a data frame `wide_data` with columns: id,
#' dermeasurement1, measurement2
#' reducio(wide_data, cols = starts_with("measurement"),
#' names_to = "measurement_type",
#' values_to = "measurement_value")
#'}
#' @export
#' @importFrom tidyr pivot_longer
#' @family data transformation functions
reducio <- function(data, cols, names_to = "name", values_to = "value", ...) {
  tidyr::pivot_longer(data, {{cols}}, names_to = names_to, values_to = values_to, ...)
}
