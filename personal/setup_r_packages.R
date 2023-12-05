# remotes 
install.packages("remotes")

# BiocManager
remotes::install_cran("BiocManager")

# update BiocManager
BiocManager::install(update = TRUE)

# devtools/usethis
remotes::install_cran(c(
  "devtools",
  "usethis"
))

# bioconductor packages
BiocManager::install(c(
  "BiocCheck",
  "biocthis",
  "GenomicRanges",
  "rtracklayer"
), dependencies = TRUE)

# cran packages
remotes::install_cran(c(
  "ggpubr",
  "bookdown",
  "reprex",
  "tidyverse"
), dependencies = TRUE)

# github packages
remotes::install_github(c(
  "dzhang32/Rmdplate",
  "dzhang32/rutils"
), dependencies = TRUE)