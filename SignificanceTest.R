#Function takes data set, tech type (GRCh38_Hifi or GRCh38_ILMN), and column
#Runs a non-parametric t-test comparing the col for the tech type between AFR and non-AFR
#Writes a csv with ordered p-values for the test
significanceTest <- function(data, tech, col,csvName) {
  pvals <- list()
  subsets <- list()
  for (i in 1:length(data$Subset)) {
    pval <- wilcox.test(data[data$Subset==data$Subset[i] & data$Superpopulation=="AFR" & data$tech==tech,col], data[data$Subset==data$Subset[i] & data$Superpopulation!="AFR" & data$tech==tech,col], alternative = "two.sided")$p.value
    pvals[[i]]<- pval
    subsets[[i]]<- data$Subset[i]
  }
  pvals.2 <- c(subsets,pvals)
  pvalsArray <- array(unlist(pvals.2),dim=c(length(pvals.2)/2,2,1))
  pValsDf <- as.data.frame(pvalsArray)
  pValsDf.2 <- pValsDf[order(pValsDf[,2]),]
  colnames(pValsDf.2) <- c("Subset","pValue")
  write.csv(pValsDf.2,csvName)
}
