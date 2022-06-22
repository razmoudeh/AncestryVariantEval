removeDuplicates <- function(csv, csvName) {
  table <- read.table(csv,sep=",",header=TRUE)
  table <- table[!duplicated(table[ , c("Subset","pValue")]),]
  write.csv(table,csvName)
}
