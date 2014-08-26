# simpleS4

[![Build Status](https://travis-ci.org/hadley/simpleS4.png?branch=master)](https://travis-ci.org/hadley/simpleS4)

This package illustrates the correct way to depend on the methods package, in order to use S4.  You need to do two things:

* In DESCRIPTION, `Depends: methods`
* In NAMESPACE, "imports(methods)"

This passes R CMD check, and works when run from Rscript:

    Rscript --vanilla -e "library(simpleS4); testS4()"
    Rscript --vanilla -e "simpleS4::testS4()"

    Rscript --vanilla -e "library(simpleS4); testRC()"
    Rscript --vanilla -e "simpleS4::testRC()"


`test()` is defined as:

```r
testS4 <- function() {
  A <- new("A")
  print(A)
}
```
