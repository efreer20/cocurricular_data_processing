goToTheZoo <- function(animal, sound){
  assertthat::assert_that(
    assertthat::is.string(animal),
    assertthat::is.string(sound))
  glue::glue("The ", animal, " goes ", sound,"!", sep = " ")
}
