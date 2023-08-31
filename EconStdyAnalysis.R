# Econ Data Analysis

#Use summary() to get the quartile data on the civilian work force and total nonfarm
# look at excluding the governement sector.

LRARInfo <- c(t(LittleRockArInformation[,-1]))
LRARInfo <- LRARInfo[1:125]
ANYInfo <- c(t(AlbanyNyInformation[,-1]))
ANYInfo <- ANYInfo[1:125]

Res <- cor(LRARInfo,ANYInfo)


CLF <- rbind(AlbanyNyCivilianLaborForce$Mar[11], AtlantaGaCivilianLaborForce$Mar[11]
             ,AustinTxCivilianLaborForce$Mar[11]
             ,BatonRougeLaCivilianLaborForce$Mar[11], BismarkNdCivilianLaborForce$Mar[11]
             ,BoiseIdCivilianLaborForce$Mar[11], BostonMaMetroCivilianLaborForce$Mar[11]
             ,ColumbiaScCivilianLaborForce$Mar[11], ColumbusOhCivilianLaborForce$Mar[11]
             ,DenverCoCivilianLaborForce$Mar[11]
             ,DesMoinesIaCivilianLaborForce$Mar[11], DoverDeCivilianLaborForce$Mar[11]
             ,HarrisburgPaCivilianLaborForce$Mar[11], HartfordCtCivilianLaborForce$Mar[11]
             ,IndianapolisInCivilianLaborForce$Mar[11], JacksonMsCivilianLaborForce$Mar[11]
             ,LittleRockArCivilianLaborForce$Mar[11])

sumCLF <- summary(CLF)
print(sumCLF)

#Emp <- AlbanyNyCivilianLaborForce
