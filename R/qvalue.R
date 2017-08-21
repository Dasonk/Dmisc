#' Transform into q-values
#' 
#' Transform into q-values based on BH-procedure
#' 
#' @param p Numeric. The p-values to adjust
#' @param m Numeric. The estimated number of true nulls
#' 
#' @export
#' @examples
#' pval <- rbeta(100, 1, 3)
#' qvalue(pval)
#' p.adjust(pval, method = "BH")
qvalue <- function(p, m = length(p)){
    
    id <- order(p)
    # sort the values
    tmp <- p[id]
    # Do the adjustment
    qval <- tmp*m/(1:n)
    # Make sure that if p1 < p2 that q1 <= q2
    qval <- rev(cummin(rev(qval)))
    # We could improvate that by doing the sorting in the opposite
    # direction...
    
    # Put into original order
    qval[id] <- qval
    
    qval
}
