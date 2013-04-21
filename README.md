# cleaver

## Description

This package cleaves polypeptide sequences. The
cleavage rules are taken from:
http://web.expasy.org/peptide_cutter/peptidecutter_enzymes.html

## Install

```s
install.packages("devtools")
library("devtools")
install_github("cleaver", "sgibb")
```

## Usage

```s
## load library
library("cleaver")

## Gastic juice peptide 1 (UniProtKB/Swiss-Prot: GAJU_HUMAN/P01358)
gaju <- "LAAGKVEDSD"

cleave(gaju, "trypsin")
# $LAAGKVEDSD
# [1] "LAAGK" "VEDSD"

cleave(gaju, "trypsin", missedCleavages=1)
# $LAAGKVEDSD
# [1] "LAAGKVEDSD"

cleave(gaju, "trypsin", missedCleavages=0:1)
# $LAAGKVEDSD
# [1] "LAAGK" "VEDSD" "LAAGKVEDSD"

cleave(gaju, "pepsin")
# $LAAGKVEDSD
# [1] "LAAGKVEDSD"
# (no cleavage)
```

