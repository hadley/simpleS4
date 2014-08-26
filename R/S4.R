#' This is a S4 class A.
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
testS4 <- function() {
  A <- new("A")
  print(A)
}
