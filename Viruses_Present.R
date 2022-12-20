setwd("~/Bioinformatics_Project/blast_db/")
temp <- read.delim("blast_output.csv", )
temp2 <- as.data.frame(table(temp))
temp3 <- temp2[grep("virus", temp2$temp),]
temp4 <- temp3[which(temp3$Freq >= 10),]
temp5 <- temp4[order(temp4$Freq, decreasing = T),]
setwd("~/Bioinformatics_Project/")
names(temp5) <- c("Virus Species", "Reads Present")
write.csv(as.data.frame(temp5), file = "blast_results.csv", row.names = F)
