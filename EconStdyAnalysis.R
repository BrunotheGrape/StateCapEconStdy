# Econ Data Analysis

#Use summary() to get the quartile data on the civilian work force and total nonfarm
# look at excluding the governement sector.
library(xts)
library(ggplot2)
library(forecast)


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

# ************ Civilian Labor Force ************

clfrcmn <- as.data.frame(lapply(CivLbrFrc, mean, na.rm = TRUE))

clfrcmnvect <- unname(unlist(clfrcmn[1,]))
clfrcmn.ts <- ts(clfrcmnvect, start=c(2013, 1), end=c(2023, 1), frequency=12) 

clfrcmncohrt <- as.data.frame(lapply(CivLbrFrcCoHrt, mean, na.rm = TRUE))

clfrcmncohrtvect <- unname(unlist(clfrcmncohrt[1,]))
clfrcmncohrt.ts <- ts(clfrcmncohrtvect, start=c(2013, 1), end=c(2023, 1), frequency=12) 

# Seasonal decomposition
fit <- stl(clfrcmn.ts, s.window="period")
plot(fit)

fitch <- stl(clfrcmncohrt.ts, s.window="period")
plot(fitch)

# fit an ARIMA model of order P, D, Q
fita <- arima(clfrcmn.ts)
fitach <- arima(clfrcmncohrt.ts)
             
# predictive accuracy
accuracy(fita)
accuracy(fitach)
              
# predict next 5 observations
#forecast(fita, 5)
#plot(forecast(fita, 5))

# ********** Unemployment Rt **********

unemprtmn <- as.data.frame(lapply(UnEmpRt, mean, na.rm = TRUE))

unemprtmnvect <- unname(unlist(unemprtmn[1,]))
unemprtmn.ts <- ts(unemprtmnvect, start=c(2013, 1), end=c(2023, 1), frequency=12) 

unemprtmncohrt <- as.data.frame(lapply(UnEmpRtCoHrt, mean, na.rm = TRUE))

unemprtmncohrtvect <- unname(unlist(unemprtmncohrt[1,]))
unemprtmncohrt.ts <- ts(unemprtmncohrtvect, start=c(2013, 1), end=c(2023, 1), frequency=12) 


# ********** Total Nonfarm **********

totnonfrmmn <- as.data.frame(lapply(TotNonFrm, mean, na.rm = TRUE))

totnonfrmmnvect <- unname(unlist(totnonfrmmn[1,]))
totnonfrmmn.ts <- ts(totnonfrmmnvect, start=c(2013, 1), end=c(2023, 1), frequency=12) 

totnonfrmmncohrt <- as.data.frame(lapply(TotNonFrmCoHrt, mean, na.rm = TRUE))

totnonfrmmncohrtvect <- unname(unlist(totnonfrmmncohrt[1,]))
totnonfrmmncohrt.ts <- ts(totnonfrmmncohrtvect, start=c(2013, 1), end=c(2023, 1), frequency=12) 

