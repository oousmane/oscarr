pyoscar <- NULL

.onLoad <- function(libname, pkgname) {
pyoscar <<- reticulate::import("pyoscar", delay_load = TRUE, convert = FALSE)
}


