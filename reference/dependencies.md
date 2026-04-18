# Install Dependencies

Install Dependencies

## Usage

``` r
install_pyoscar(envname = NULL, ...)
```

## Arguments

- envname:

  The name, or full path, of the environment in which Python packages
  are to be installed. When NULL (the default), the active environment
  as set by the RETICULATE_PYTHON_ENV variable will be used; if that is
  unset, then the r-reticulate environment will be used.

- ...:

  Additional arguments passed to conda_install() or
  virtualenv_install().
