#' Get function arguments
#' 
#' Gets the function arguments nicely.  Does not return arguments
#' that are set by defaults
#' 
#' @export
#' @references \url{http://stackoverflow.com/a/17257053/1003565}
#' @author Hong Ooi (from StackOverflow)
#' @examples
#' test <- function(x=1, y=2, z=3){getargs()}
getargs <- function(){
    cl <- sys.call(-1)
    f <- get(as.character(cl[[1]]), mode="function", sys.frame(-2))
    cl <- match.call(definition=f, call=cl)
    as.list(cl)[-1]
}