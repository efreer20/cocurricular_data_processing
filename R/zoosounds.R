#' goToTheZoo
#'
#' @param animal String The name of an animal
#' @param sound String The sound the animal makes
#'
#' @return New string
#' @importFrom glue glue
#' @importFrom assertthat assert_that is.string
#' @export
#'
#' @examples
goToTheZoo <- function(animal, sound){
  assertthat::assert_that(
    assertthat::is.string(animal),
    assertthat::is.string(sound))
  glue::glue("The ", animal, " goes ", sound,"!", sep = " ")
}
