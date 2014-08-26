# simpleS4

This package illustrates the correct way to depend on the methods package, in order to use S4.  You need to do two things:

* In DESCRIPTION, `Depends: methods`
* In NAMESPACE, "imports(methods)"

This passes R CMD check, and works when run from Rscript (e.g. `Rscript --vanilla -e "library(simpleS4); print(new('A'));"`)
