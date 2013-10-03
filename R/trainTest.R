
#' Create training/testing sets
#' 
#' Split a dataset into training and testing sets based
#' on a training/testing percentage
#' 
#' @param dat A data.frame or matrix that you want to split
#' into training/testing sets.  It is assumed that each row is
#' a separate observation
#' @param p.train Numeric.  A number between 0 and 1 dictating
#' what percentage of the data will be put in the training set
#' @param sort Logical.  Whether you want the training/testing
#' sets to be sorted in the same order as the original data.
#' @export
#' @examples
#' trainTest(mtcars)
trainTest <- function(dat, p.train = .7, sort = FALSE){
    
    stopifnot(0 < p.train, p.train < 1, nrow(dat) > 1)
    
    n <- nrow(dat)
    n.train <- round(n*p.train)
    n.test <- n - n.train
    
    if(n.test == 0){
        warning("The value for p.train resulted in 0 observations ",
                "in the testing set. This will be modified so that ",
                "there is at least 1 observation in the test set.")
        n.test <- 1 # Not actually used but this is the logic...
        n.train <- n.train - 1
    }
    
    if(n.train == 0){
        warning("The value for p.train resulted in 0 observations ",
                "in the training set. This will be modified so that ",
                "there is at least 1 observation in the training set.")
        n.train <- 1
        n.test <- n.test - 1 # Not actually used but this is the logic...
    }
    
    id.train <- sample(seq_len(n), n.train)
    id.test <- setdiff(seq_len(n), id.train)
    if(sort){
        id.train <- sort(id.train)
        id.test <- sort(id.test)
    }
    dat.train <- dat[id.train,]
    dat.test <- dat[id.test,]
    out <- list(train = dat.train, test = dat.test)
    
    out
}