
# oscarr

<!-- badges: start -->
<!-- badges: end -->

The goal of `oscarr` is to provide an R wrapper to `pyoscar` python module that provide an easy access to WMO OSCAR REST API. In other words, the package `oscarr` brings pyoscar to R Community.

## Setting up and Installation

You can install the development version of oscarr from [GitHub](https://github.com/) with:

``` {r install-oscarr}
# install.packages("devtools")
devtools::install_github("oousmane/oscarr")
```

```{r setup}
# environment path (replace if you needed)
my_env <- "~/.virtualenvs/pkg-oscarr/" # on Win system can be "C:/.virtualenvs/pkg-oscarr/"

# run this (works on macOS)
args <- paste("-m venv", my_env) 
system2("python3", args) # create environment
reticulate::use_virtualenv(my_env) # force reticulate to use my_env
# install pyoscar in environment
oscarr::install_pyoscar(my_env)
```

## Example

This is a basic example which shows you how use oscarr :

```{r example}
library(oscarr)
## retrieve all oscar station within  a country
get_stations(country = "NGA") # Retrieve WMO OSCAR Station within Nigeria

## station report summary by using WIGOS identifier
wigos_baraboule <- "0-854-0-109"
get_station_report(identifier = wigos_baraboule)

## Add further constrains to station query

get_stations(program = "GBON",country = "BFA", station_type = "landFixed")
```
