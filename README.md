Dmisc
==========

The `Dmisc` package provides functions that don't fit elsewhere that I want.  A quick overview of what you will find in the package so far:

* goldenratiocolors -      Choose n colors using the golden ratio
* holtwinters -             Holt winters smoothing no seasonality
* linfinder -               Finds linear combinations
* lsos -                   Improved list of objects
* shadeplot -              Shade a section of a pdf
* traintest -              Create training/testing sets
* unfactor -               Change factors to characters
    
## Installation

Currently there isn't a release on [CRAN](http://cran.r-project.org/).

You can, however, download the [zip ball](https://github.com/Dasonk/Dmisc/zipball/master) or [tar ball](https://github.com/Dasonk/Dmisc/tarball/master), decompress and run `R CMD INSTALL` on it, or use the **devtools** package to install the development version:

```r
## Make sure your current packages are up to date
update.packages()
## devtools is required
library(devtools)
install_github("Dmisc", "Dasonk")
```
