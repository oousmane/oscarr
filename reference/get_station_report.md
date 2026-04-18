# Retrieve WMO OSCAR station report summary

Retrieve WMO OSCAR station report summary

## Usage

``` r
get_station_report(identifier = "0-20000-0-71758")
```

## Arguments

- identifier:

  WIGOS station identifier

## Value

a [tibble](https://tibble.tidyverse.org/reference/tibble-package.html).
Summary report of the station in a tibble `data.frame`

## Examples

``` r
if (FALSE) { # \dontrun{
library(oscarr)
wigos_baraboule <- "0-854-0-109"
get_station_report(identifier = wigos_baraboule)
} # }

```
