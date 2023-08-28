# Econ Data Analysis

#Use summary() to get the quartile data on the civilian work force and total nonfarm
# look at excluding the governement sector.

LRARInfo <- c(t(LittleRockArInformation[,-1]))
LRARInfo <- LRARInfo[1:125]
ANYInfo <- c(t(AlbanyNyInformation[,-1]))
ANYInfo <- ANYInfo[1:125]

Res <- cor(LRARInfo,ANYInfo)
