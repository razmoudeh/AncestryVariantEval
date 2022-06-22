d1 <- read.table("INDEL.Frac_NA(Hifi_2).csv",sep=",",header=TRUE)
d2 <- read.table("INDEL.Recall(Hifi_2).csv",sep=",",header=TRUE)

d3 <- read.table("INDEL.FP.gt(Hifi_2).csv",sep=",",header=TRUE)
d4 <- read.table("INDEL.FP.al(Hifi_2).csv",sep=",",header=TRUE)
d5 <- read.table("INDEL.QUERY.FP.het(Hifi_2).csv",sep=",",header=TRUE)
d6 <- read.table("INDEL.QUERY.FP.homalt(Hifi_2).csv",sep=",",header=TRUE)
d7 <- read.table("INDEL.QUERY.FP(Hifi_2).csv",sep=",",header=TRUE)

d8 <- read.table("SNP.Recall(Hifi_2).csv",sep=",",header=TRUE)
d9 <- read.table("SNP.Frac_NA(Hifi_2).csv",sep=",",header=TRUE)
d10 <- read.table("SNP.FP.gt(Hifi_2).csv",sep=",",header=TRUE)
d11 <- read.table("SNP.FP.al(Hifi_2).csv",sep=",",header=TRUE)
d12 <- read.table("SNP.QUERY.FP.het(Hifi_2).csv",sep=",",header=TRUE)
d13 <- read.table("SNP.QUERY.FP.homalt(Hifi_2).csv",sep=",",header=TRUE)
d14 <- read.table("SNP.QUERY.FP(Hifi_2).csv",sep=",",header=TRUE)

d15 <- read.table("D16_PLUS.FP(Hifi_2).csv",sep=",",header=TRUE)
d16 <- read.table("D16_PLUS.Recall(Hifi_2).csv",sep=",",header=TRUE)
d17 <- read.table("I16_PLUS.FP(Hifi_2).csv",sep=",",header=TRUE)
d18 <- read.table("I16_PLUS.Recall(Hifi_2).csv",sep=",",header=TRUE)

allpVals.2 <- merge(d1[,3:4],d2[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d3[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d4[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d5[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d6[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d7[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d8[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d9[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d10[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d11[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d12[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d13[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d14[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d15[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d16[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d17[,3:4],by="Subset")
allpVals.2 <- merge(allpVals.2,d18[,3:4],by="Subset")

length(allpVals.2)
allpValsDF.2 <- as.data.frame(allpVals.2)
colnames(allpValsDF.2) <- c("Subset","INDEL.Frac_NA","INDEL.Recall","INDEL.FP.gt","INDEL.FP.al",
                          "INDEL.QUERY.FP.het","INDEL.QUERY.FP.homalt","INDEL.QUERY.FP",
                          "SNP.Recall","SNP.Frac_NA","SNP.FP.gt","SNP.FP.al","SNP.QUERY.FP.het",
                          "SNP.QUERY.FP.homalt","SNP.QUERY.FP","D16_PLUS.FP","D16_PLUS.Recall",
                          "I16_PLUS.FP","I16_PLUS.Recall")
write.csv(allpValsDF.2,"allpVals_PACBIO.csv")
