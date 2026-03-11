#' @rdname display.describe_posterior
#' @export
print.describe_posterior <- function(x,
                                     digits = 2,
                                     caption = "Summary of Posterior Distribution",
                                     ...) {
  "hi"
}

#' @export 
describe_posterior <- function(x, ...) {
  class(x) <- c("describe_posterior", class(x))
  x
}
