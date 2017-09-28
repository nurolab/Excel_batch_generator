# R script to generate a batch of excel sheets from .BVEC file format
# Date: September 27, 2017

# Read file and folders ---------------------------------------------------

library(xlsx)
setwd("~/Downloads")
files <-  Sys.glob("*.bvec")
limit <- length(files)
list.index <- 1:limit

# Batch processing --------------------------------------------------------

for(i in list.index)
  di <- t(read.delim(files[i],header = FALSE,sep = " ")[-1][-121])

# Generate Excel sheets ---------------------------------------------------

write.csv(di[1:30,],file = "this1.csv")