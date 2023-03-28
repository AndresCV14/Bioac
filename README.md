Bioac: a demo package
===============================================

This is a demo package.

Any suggestion do not hesitate to contact at gualapuro.moises@gmail.com

Installation and loading
------------------------

-   Install the latest version from [GitHub](https://github.com/AndresCV14/Bioac) as follow:

``` r
# Install
if(!require(devtools)) install.packages("devtools")
devtools::install_github("AndresCV14/Bioac")
```

Distribution
------------

``` r
library(Bioac)
#> Loading required package: ggplot2
# Create some data format
# :::::::::::::::::::::::::::::::::::::::::::::::::::
Ncolumn(genotype_analysis, "X1", "ID")
Plotgenotype(genotype_analysis, "X7")
Tablecont(genotype_analysis, "X2")
```
