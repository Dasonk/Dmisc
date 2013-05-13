#' Holm's method
#' 
#' Transform p-values based on Holm's method
#' 
#' @param p Numeric. The p-values to adjust
#' @examples
#' p <- c(.042, .001, .031, .014, .007)
#' p.adjust(p, "holm")
#' holm(p)
holm <- function(p){
    m <- length(p)
    id <- order(p)
    # sort the values
    tmp <- p[id]
    # Do the adjustment
    pval <- tmp*(m  - seq_len(m) + 1)
    # Make sure that if p1 < p2 that q1 <= q2
    pval <- pmin(cummax(pval), 1)
    # We could improvate that by doing the sorting in the opposite
    # direction...
    
    # Put into original order
    pval[id] <- pval
    
    pval
}
