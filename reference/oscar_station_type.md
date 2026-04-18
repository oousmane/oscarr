# Get WMO OSCAR station type name

Get WMO OSCAR station type name

## Usage

``` r
oscar_station_type()
```

## Value

A character vector of WMO OSCAR station type

## Examples

``` r
library(oscarr)
oscar_station_type()
#>  [1] "seaMobile"        "underwaterFixed"  "underwaterMobile" "airMobile"       
#>  [5] "lakeRiverMobile"  "seaOnIce"         "landMobile"       "landFixed"       
#>  [9] "lakeRiverFixed"   "seaFixed"         "airFixed"         "landOnIce"       
oscar_station_type()[8] # landFixed 
#> [1] "landFixed"
```
