#' Change factors to characters
#' 
#' Change factors to characters in a dataframe
#' 
#' @param df The dataframe you wish to change the factors into characters
#' @export
#' @examples
#' df <- data.frame(a = letters[1:5], x = 1:5, y = LETTERS[1:5], stringsAsFactors = TRUE)
#' str(df)
#' df <- unfactor(df)
#' str(df)
unfactor <- function(df){
    # Find the factors
    id <- sapply(df, is.factor)
    # Convert to characters
    df[id] <- lapply(df[id], as.character)
    df
}