# init.R
#
# Install packages if not already installed
#
#

my_packages = c("tidyverse", "htmlwidgets", "plotly", "ggplot2", "png")


install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p)
  }
}

invisible(sapply(my_packages, install_if_missing))