#' This is a class A.
#'
#' @export
#' @import methods
#' @examples
#' print(new("A"))
setClass("A", contains = "list")

#' @export
#' @rdname A-class
setMethod("show", "A", function(object) {
  cat("Hi!\n")
})

#' A simple test function
#'
#' @export
test <- function() {
  A <- new("A")
  print(A)
}
