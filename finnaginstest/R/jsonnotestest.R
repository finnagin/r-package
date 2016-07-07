#' Request from refence server
#' @description Sends a request to the framespace reference server and retreaves the content of the response
#' @param url = the url you want the data to come from i.e. "http://example.com/api/"
#' @param end = the prefex to the above url i.e. "example/"
#' @param req = the request you want to send
#' @return a list containig the information
#' @export
refreq <- function(url = "http://0.0.0.0:5000/", end = "units/search", req = {}){


  url <- paste0(url, end)
  r <- POST(url,
            encode = "json",
            accept_json(),
            add_headers(`Accept` = 'application/json',
                        `Content-Type` = 'application/json'),
            body = toJSON(req))

  response <- content(r, as = "parsed")
  return(response)
}
