# R script to generate a batch of excel sheets from .BVEC file format
# Date: September 27, 2017

# Read file and folders ---------------------------------------------------

setwd("~/Documents/depp/Excel_batch_generator")
files <-  Sys.glob("*.bvec")
limit <- length(files)
list.index <- 1:limit

# Batch processing --------------------------------------------------------

for(i in list.index)
  di <- t(read.delim(files[i],header = FALSE,sep = " ")[-1][-121])
di <- as.data.frame(di)
colnames(di) <- NULL
rownames(di) <- NULL

# Generate Excel sheets ---------------------------------------------------

write.csv(di[1:30,],file = "1.csv",row.names = FALSE)
write.csv(di[31:60,],file = "2.csv",row.names = FALSE)
write.csv(di[61:90,],file = "3.csv",row.names = FALSE)
write.csv(di[91:120,],file = "4.csv",row.names = FALSE)
