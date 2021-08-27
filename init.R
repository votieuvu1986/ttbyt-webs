# init.R
#
# Example R code to install packages if not already installed
#

my_packages = c("shiny", 
                "shinyBS",
               "shinythemes",
               "shinyjs",
               "shinyWidgets",
               "shinydashboard",
               "shinycssloaders",
               "tidyverse",
               "DT",
               "leaflet",
               "tibble",
               "sp",
               "lubridate",
               "rmarkdown",
               "flextable",
               "webshot",
               "rintrojs",
               "feather",
               "readxl",
               "xts",
               "plotly",
               "dygraphs",
               "tsfknn",
               "forecast")

install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p)
  }
}

invisible(sapply(my_packages, install_if_missing))
