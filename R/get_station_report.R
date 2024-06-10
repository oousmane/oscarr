

#' Get OSCAR station report summary by providing it's identifier
#' @importFrom janitor clean_names
#' @importFrom tibble as_tibble
#' @param identifier
#'
#' @return a [tibble][tibble::tibble-package]. Summary report of the station with identifier
#' @export
#'
#' @examples
#' library(oscarr)
#' get_station_report(identifier = "0-20000-0-71758")
get_station_report <- function(identifier="0-20000-0-71758"){
c <- pyoscar$OSCARClient()
c$get_station_report(identifier=identifier,summary = TRUE) %>%
  reticulate::py_to_r() %>%
  unlist() %>%
  t() %>%
  tibble::as_tibble() %>%
  janitor::clean_names()
}
