<!-- README.md is generated from README.Rmd. Please edit that file -->

# oscarr

<!-- badges: start -->

<!-- badges: end -->

The goal of `oscarr` is to provide an R wrapper to [pyoscar](https://github.com/wmo-cop/pyoscar "https://github.com/wmo-cop/pyoscar") python module that provide an easy access to WMO OSCAR REST API. In other words, the package `oscarr` brings [pyoscar](https://github.com/wmo-cop/pyoscar "https://github.com/wmo-cop/pyoscar") to R Community.

# Installation

You can install the development version of oscarr from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("oousmane/oscarr")
```

The following code set up an virtual environment for python dependencies

``` r
# environment path (replace if you needed)
my_env <- "~/.virtualenvs/pkg-oscarr/" # on Win system can be "C:/.virtualenvs/pkg-oscarr/"
# run this (works on macOS)
args <- paste("-m venv", my_env) 
system2("python3", args) # create environment
reticulate::use_virtualenv(my_env) # force reticulate to use my_env
# install pyoscar in environment
oscarr::install_pyoscar(my_env)
```

# Example

This is a basic example which shows you how to use `oscarr`:

``` r
library(oscarr)
# retrieve all oscar station within  a country get_stations(country="NGA") 
# Retrieve WMO OSCAR Station within Nigeria
# station report summary by using WIGOS identifier

wigos_baraboule <- "0-854-0-109"
get_station_report(identifier = wigos_baraboule)
#> # A tibble: 1 × 8
#>   station_name wigos_station_identi…¹ facility_type latitude longitude elevation
#>   <chr>        <chr>                  <chr>         <chr>    <chr>     <chr>    
#> 1 Baraboulé    0-854-0-109            Land (fixed)  14.2058  -1.8505   307      
#> # ℹ abbreviated name: ¹​wigos_station_identifier
#> # ℹ 2 more variables: territory_name <chr>, wmo_region <chr>
```

You can add further constrains to the query

``` r
## Add further constrains to station query
get_stations(program = "GBON",country = "BFA", station_type = "landFixed")
#> # A tibble: 11 × 21
#>        id name      region territory declaredStatus latitude longitude elevation
#>     <int> <chr>     <chr>  <chr>     <chr>             <dbl>     <dbl>     <dbl>
#>  1   8888 BOBO-DIO… Africa Burkina … Operational        11.2   -4.3          432
#>  2  32861 BOGANDE   Africa Burkina … Operational        13.0   -0.13         250
#>  3   8889 BOROMO    Africa Burkina … Operational        11.7   -2.92         264
#>  4   8886 DEDOUGOU  Africa Burkina … Operational        12.5   -3.48         299
#>  5   8883 DORI      Africa Burkina … Closed             14.0   -0.0333       276
#>  6   8887 FADA N'G… Africa Burkina … Operational        12.1    0.35         292
#>  7   8891 GAOUA     Africa Burkina … Operational        10.3   -3.18         333
#>  8   8885 OUAGADOU… Africa Burkina … Operational        12.4   -1.52         303
#>  9   8884 OUAHIGOU… Africa Burkina … Operational        13.6   -2.43         329
#> 10 140112 Ouagadou… Africa Burkina … Operational        12.4   -1.52         303
#> 11   8890 PO        Africa Burkina … Operational        11.2   -1.15         326
#> # ℹ 13 more variables: stationTypeName <chr>, wigosStationIdentifiers <list>,
#> #   wigosId <chr>, stationTypeId <int>, dateEstablished <chr>,
#> #   stationStatusCode <chr>, stationTypeCode <chr>,
#> #   stationProgramsDeclaredStatuses <chr>, stationDeclaredStatusCode <chr>,
#> #   assessedStatus <chr>, stationAssessedStatusCode <chr>,
#> #   stationProgramsAssessedStatuses <chr>, dateClosed <chr>
```
