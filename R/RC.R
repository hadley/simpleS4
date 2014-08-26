#' This is an RC class B.
#'
#' @export
#' @import methods
#' @examples
#' print(new("B"))
B <- setRefClass("B", methods = list(
    show = function(x) cat("Hi!\n")
  )
)

#' A simple test function
#'
#' @export
testRC <- function() {
  print(new("B"))
  print(B$new())
  print(B())
}
