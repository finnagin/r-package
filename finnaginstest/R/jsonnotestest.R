#' Gets notes from lootbox api and transfers them into a data frame format
#' @param no paramater needed
#' @return a datafram containig the json information
#' @export
getpnotes <- function() {
  test1 <- fromJSON(curl(url = "https://api.lootbox.eu/patch_notes"), flatten = TRUE)
  return(test1)
}
