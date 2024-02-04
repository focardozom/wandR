#' Avada Kedavra - Remove Objects from the Environment
#'
#' @description
#' `avada_kedavra` is a powerful spell that irreversibly removes specified objects
#' from the global environment. Inspired by the most potent spell in the wizarding
#' world, this function should be used with utmost caution, as it will permanently
#' delete the named objects, leaving no trace behind.
#'
#' @param ... The names of the objects to be removed, as character strings.
#' Objects not found or misspelled will be ignored without error.
#'
#' @details
#' Unlike the spell from which it draws its name, this function does not cause
#' harm beyond the removal of R objects. Still, it's a reminder of the power
#' wielded by those who command it. Ensure you have backups or have saved important
#' work before using, as its effects cannot be undone.
#'
#' @examples
#' \dontrun{
#' x <- 42
#' y <- "The answer"
#' z <- list(a = 1, b = 2)
#' # Remove x and y from the environment
#' # avada_kedavra("x", "y")
#' # Note: Running this example will remove x and y permanently.
#'}
#' @note
#' Use this function with caution. There is no undo. Once an object is removed,
#' it cannot be recovered unless previously saved or backed up.
#'
#' @export
#' @family environment manipulation functions
avada_kedavra <- function(...) {
  rm(list = c(...), envir = .GlobalEnv)
}
