#' Request from refence server
#' @description Sends a request in the form of a json file to the framespace reference server and retreaves the content of the response
#' @param url = the url you want the data to come from i.e. "http://example.com/api/"
#' @param end = the prefex to the above url i.e. "example/search/"
#' @param file = a json object containing the search request
#' @return a list containig the information
#' @export
refreq <- function(url = "http://0.0.0.0:5000/", end = "units/search", file = "searchall.json"){


  url <- paste0(url, end)
  req <- POST(url,
            encode = "json",
            accept_json(),
            add_headers(`Accept` = 'application/json',
                        `Content-Type` = 'application/json'),
            body = upload_file(file))

  response <- content(req, as = "parsed")
  return(response)
}
