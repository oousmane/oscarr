#' Get WMO OSCAR station type name
#'
#' @return A character vector of WMO OSCAR station type
#' @export
#' @examples
#' library(oscarr)
#' oscar_station_type()
#' oscar_station_type()[8] # landFixed 
#' 
oscar_station_type <-function(){
  c("seaMobile","underwaterFixed","underwaterMobile","airMobile","lakeRiverMobile","seaOnIce","landMobile","landFixed","lakeRiverFixed","seaFixed","airFixed","landOnIce")
} 


