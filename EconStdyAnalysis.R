# Econ Data Analysis

#Use summary() to get the quartile data on the civilian work force and total nonfarm
# look at excluding the governement sector.
library(xts)


LRARInfo <- c(t(LittleRockArInformation[,-1]))
LRARInfo <- LRARInfo[1:125]
ANYInfo <- c(t(AlbanyNyInformation[,-1]))
ANYInfo <- ANYInfo[1:125]

Res <- cor(LRARInfo,ANYInfo)

employlst <- list('CivilianLaborForce', 'Employment', 'Unemployment', 'UnemploymentRt')

# Incomplete data sets: Carson City Nv, Pierre SD, Jefferson City Mo, Montpelier Vt, Olympia Wa

statelst <- c('AlbanyNy', 'AtlantaGa','AustinTx', 'BatonRougeLa', 'BismarkNd', 'BoiseId', 'BostonMaMetro', 'CharlestonWv'
              ,'CheyenneWy', 'ColumbiaSc', 'ColumbusOh', 'DenverCo','DesMoinesIa', 'DoverDe', 'HarrisburgPa'
              ,'DesMoinesIa', 'DoverDe', 'HarrisburgPa', 'HartfordCt', 'IndianapolisIn','JacksonMs'
              ,'LansingMi','LincolnNe', 'LittleRockAr','MadisonWi', 'MinneapolisMn', 'MontgomeryAl'
              ,'NashvilleTn', 'OklahomaCityOk', 'PhoenixAz', 'ProvidenceRi', 'RaleighNc', 'RichmondVa'
              , 'SacramentoCa', 'SalemOr', 'SaltLakeCityUt', 'SantaFeNm', 'SpringfieldIl', 'TallahasseeFl'
              ,'TopekaKs', 'TrentonNj')
sector <- c('CivilianLaborForce')
CLF <- data.frame()
for (state in statelst) {
  output <- c(t(get((paste0(noquote(state),noquote(sector))))$Mar[11]))
  CLF <- rbind(CLF,output)
}


sumCLF <- summary(CLF)
print(sumCLF)


#date <- seq(from = as.Date("2013/1/1"),
#            to = as.Date("2023/5/1"),
#            by = "month")
  


Sprgfldr1vect <- unname(unlist(SprgfldIl[1,]))
SprgfldIl.ts <-ts(Sprgfldr1vect, start=c(2013, 1), end=c(2023, 1), frequency=12) 



clfrcmn <- as.data.frame(lapply(CivLbrFrc, mean, na.rm = TRUE))

clfrcmnvect <- unname(unlist(clfrcmn[1,]))
clfrcmn.ts <- ts(clfrcmnvect, start=c(2013, 1), end=c(2023, 1), frequency=12) 

