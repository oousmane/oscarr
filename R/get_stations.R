

#' Retrieve WMO OSCAR station list for a country
#'
#' @param country Official ISO 3166-1 alpha-3 code (3 letters)
#' @importFrom purrr map_dfr
#' @importFrom purrr pluck
#' @importFrom reticulate py_to_r
#' @importFrom dplyr mutate
#' @return A tibble. OSCAR Station list of the specified country
#' @export
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

