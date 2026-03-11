#' @title hello
#' @export
print.describe_posterior <- function(x,
                                     digits = 2,
                                     caption = "Summary of Posterior Distribution",
                                     ...) {
  "hi"
}

#' @title hello
#' @export 
describe_posterior <- function(x, ...) {
  class(x) <- c("describe_posterior", class(x))
  x
}
