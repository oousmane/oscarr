

#' Retrieve WMO OSCAR station metadata
#'
#' @importFrom purrr map_dfr
#' @importFrom purrr pluck
#' @importFrom reticulate py_to_r
#' @importFrom dplyr mutate
#' @param program WMO OSCAR program/network. Example : "GBON","RBCN", etc.
#' @param country Official ISO 3166-1 alpha-3 code (3 letters)
#' @param station_type WMO OSCAR station type. Example : "landFixed","airMobile" etc. Use \code{oscarr::oscar_station_type()} for a complete list.
#' @param identifier WIGOS Station identifier. Example : "0-854-0-109".
#' @return A tibble of metadata of all matching stations
#' @export
#'
#' @example
#' library(oscarr)
#' country <- "NGA" # Nigeria ISO 3166-1 alpha-3 code
#' nga_stns <- get_stations(country = country)
#' View(nga_stns)
#'
get_stations <- function(country="BFA"){
  c=pyoscar$OSCARClient()
  res <- c$get_stations(country=country)
  res$stationSearchResults %>%
    reticulate::py_to_r() %>%
    purrr::map_dfr(purrr::pluck) %>%
    dplyr::mutate(
      longitude = as.numeric(longitude),
      latitude = as.numeric(latitude),
      elevation = as.numeric(elevation)
    )
}

