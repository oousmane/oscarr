#' Retrieve WMO OSCAR station report summary
#' @importFrom janitor clean_names
#' @importFrom tibble as_tibble
#' 
#' @param identifier WIGOS station identifier 
#'
#' @return a [tibble][tibble::tibble-package]. Summary report of the station in a tibble \code{data.frame}
#' @export
#'
#' @examples
#' library(oscarr)
#' wigos_baraboule <- "0-854-0-109"
#' get_station_report(identifier = wigos_baraboule)
#'
#'
get_station_report <- function(identifier="0-20000-0-71758"){
c <- pyoscar$OSCARClient()
c$get_station_report(identifier=identifier,summary = TRUE) %>%
  reticulate::py_to_r() %>%
  unlist() %>%
  t() %>%
  tibble::as_tibble() %>%
  janitor::clean_names()
}
