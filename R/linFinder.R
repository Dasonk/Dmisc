
#' Finds linear combinations
#' 
#' Finds linear combinations of columns that make up linearly
#' dependent columns
#' 
#' @param mat An input matrix
#' @param prefix Character string.  What to prefer the output columns with.
#' @export
#' @examples
#' mat <- matrix(c(1,1,0,1,0,1,1,0,0,1,1,0,1,1,0,1,0,1,0,1), byrow=TRUE, ncol=5, nrow=4)
#' linFinder(mat)
linFinder <- function(mat, prefix = "Column_"){
    # If the matrix is full rank then we're done
    if(qr(mat)$rank == ncol(mat)){
        print("Matrix is of full rank")
        return(invisible(seq(ncol(mat))))
    }
    m <- ncol(mat)
    # cols keeps track of which columns are linearly independent
    cols <- 1
    for(i in seq(2, m)){
        ids <- c(cols, i)
        mymat <- mat[, ids]
        if(qr(mymat)$rank != length(ids)){
            # Regression the column of interest on the previous
            # columns to figure out the relationship
            o <- lm(mat[,i] ~ mat[,cols] + 0)
            # Construct the output message
            start <- paste0(prefix, i, " = ")
            # Which coefs are nonzero
            nz <- (abs(coef(o)) > .Machine$double.eps^0.5)
            tmp <- paste(prefix, cols[nz], sep = "")
            vals <- paste(coef(o)[nz], tmp, sep = "*", collapse = " + ")
            message <- paste0(start, vals)
            print(message)
        }else{
            # If the matrix subset was of full rank
            # then the newest column is linearly independent
            # so add it to the cols list
            cols <- ids
        }
        
    }
    return(invisible(cols))
}