## Copyright 2013 Sebastian Gibb
## <mail@sebastiangibb.de>
##
## This is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## It is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## See <http://www.gnu.org/licenses/>

setMethod(f="cleave",
          signature=signature(x="character"),
          definition=function(x, enzym="trypsin", missedCleavages=0) {
  return(.cleave(x=x, enzym=enzym, missedCleavages=missedCleavages))
})

setMethod(f="cleave",
          signature=signature(x="AAString"),
          definition=function(x, enzym="trypsin", missedCleavages=0) {
  return(cleave(AAStringSet(x), enzym=enzym, missedCleavages=missedCleavages))
})

setMethod(f="cleave",
          signature=signature(x="AAStringSet"),
          definition=function(x, enzym="trypsin", missedCleavages=0) {
  cl <- .cleave(x=as.character(x), enzym=enzym, missedCleavages=missedCleavages)
  return(.AAStringSetList(lapply(cl, AAStringSet)))
})
