#' daily_prophet - Create Summary Statistics
#'
#' @description
#' `daily_prophet` conjures summary statistics for your data frame, akin to
#' the `dplyr::summarise()` function. This spell allows you to distill your
#' dataset down to essential summaries, capturing the core essence of your
#' data with a touch of magic.
#'
#' @param .data A data frame or tibble to summarize.
#' @param ... Additional arguments specifying the summaries to compute.
#' Each argument can be a summary statistic to calculate, such as mean, sum,
#' median, etc., possibly named to indicate the summary's purpose.
#'
#' @return A data frame or tibble containing the summary statistics for the
#' specified variables.
#'
#' @examples
#' \dontrun{
#' library(dplyr)
#' # Assuming potion_data is a data frame with columns: ingredient, quantity, and effect_strength
#' daily_prophet(potion_data, total_quantity = sum(quantity), average_strength = mean(effect_strength))
#'}
#' @export
#' @import dplyr
#' @family data summarization functions
daily_prophet <- function(.data, ...) {
  dplyr::summarise(.data, ...)
}
