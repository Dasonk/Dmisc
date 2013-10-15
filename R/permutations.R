#' Generate permutations
#' 
#' Generates all length(x)! permutations of the elements
#' in a vector x.  If there are duplicate elements in x
#' then there will be repeated 'permuations' in the result.
#' 
#' The result is a list where each element is a vector
#' containing one of the permutations.
#' 
#' @param x The vector to create permutations of
#' @export
#' @examples
#' permutations(1:3)
#' permutations(c("a", "b", "c"))
#' permutations(c("raptors", "are", "horrible"))
permutations <- function(x){
    if(length(x) == 1){
        return(list(x))
    }else{
        firstItem <- x[1]
        rest <- x[-1]
        l <- Recall(rest)
        n <- length(rest)
        out <- list()
        for(i in seq(0, n)){
            tmp <- lapply(l, append, values = firstItem, after = i)
            out <- append(out, tmp)
        }
        return(out)
    }
}
