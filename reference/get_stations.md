# Retrieve WMO OSCAR station metadata

Retrieve WMO OSCAR station metadata

## Usage

``` r
get_stations(
  program = NULL,
  country = "BFA",
  station_type = NULL,
  wigos_id = NULL
)
```

## Arguments

- program:

  WMO OSCAR program/network. Example : "GBON","RBCN", etc.

- country:

  Official ISO 3166-1 alpha-3 code (3 letters)

- station_type:

  WMO OSCAR station type. Example : "landFixed","airMobile" etc. Use
  [`oscarr::oscar_station_type()`](https://oousmane.github.io/oscarr/reference/oscar_station_type.md)
  for a complete list.

- identifier:

  WIGOS Station identifier. Example : "0-854-0-109".

## Value

A tibble of metadata of all matching stations

## Examples

``` r
if (FALSE) { # \dontrun{
library(oscarr)
country <- "NGA" # Nigeria ISO 3166-1 alpha-3 code
nga_stns <- get_stations(country = country)
View(nga_stns)
} # }

```
