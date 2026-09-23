# Install the packages used by the app at fixed versions, and stop the Docker build
# if any installed version differs. These are the versions held by the CRAN
# snapshot that the base image uses (Posit Package Manager, 23 June 2026).

pinned = c(DT = '0.34.0', dplyr = '1.2.1', flexdashboard = '0.6.3', htmltools = '0.5.9',
           knitr = '1.51', purrr = '1.2.2', rmarkdown = '2.31', shiny = '1.14.0',
           stringr = '1.6.0', tidyr = '1.3.2')

for(package in names(pinned)) {
  installed = tryCatch(as.character(packageVersion(package)), error = function(e) NA)
  if(!identical(installed, pinned[[package]])) {
    remotes::install_version(package, pinned[[package]], upgrade = 'never')
  }
}

installed = sapply(names(pinned), function(package) as.character(packageVersion(package)))
print(data.frame(pinned, installed))
stopifnot(identical(unname(installed), unname(pinned)))
