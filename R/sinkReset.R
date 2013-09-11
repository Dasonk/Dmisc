#' Resets any sink connections
#' 
#' Resets any sinky connections.  This makes the appropriate number of calls to sink
#' so that no matter how many diversions there have been the output
#' will be go to standard out once more.
#' 
#' closeAllConnections() is a better alternative.
#' 
#' @export
#' @examples
#' sink("fakefileasdfasdfasdf.txt")
#' 2 + 2 # this will get sent to fakefileasdfasdfasdf.txt
#' sink("anotherfakefile.txt")
#' 3 + 3 # sent to anoterfakefile.txt
#' sink.reset()
#' 2 + 2 # results should display in console
sinkReset <- function(){
    for(i in seq_len(sink.number())){
        sink(NULL)
    }
}