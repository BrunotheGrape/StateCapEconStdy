#Read in Data
library(readxl)
library(dplyr)
library(tidyverse)
library(readr)
library(purrr)

data <- LittleRockArInformation
DataTrans <- function(data) {
  datai <- as.numeric(data[row,])
  dataf <- append(dataf, datai)
  dataf <- dataf[!is.na(dataf)] 
  return(dataf)
}

StateLst <- list('Al', 'Ak', 'Az', 'Ar', 'Ca', 'Co', 'Ct', 'De', 'Fl', 'Ga', 'Hi',
                 'Id', 'Il', 'In', 'Ia', 'Ks', 'Ky', 'La', 'Me', 'Md', 'Ma', 'Mi',
                 'Mn', 'Ms', 'Mo', 'Mt', 'Ne', 'Nv', 'Nh', 'Nj', 'Nm', 'Ny', 'Nc',
                 'Nd', 'Oh', 'Ok', 'Or', 'Pa', 'Ri', 'Sc', 'Sd', 'Tn', 'Tx', 'Ut',
                 'Vt', 'Va', 'Wa', 'Wv', 'Wi', 'Wy')

datalst <- list('TotalNonFarm', 'Manufacturing', 'TradeTransportationUtilities', 
                'Information', 'Financial', 'ProfessionalandBusinessServices', 
                'EducationandHealthServices', 'LeisureHospitality', 'OtherServices',
                'Government')

employlst <- list('CivilianLaborForce', 'Employment', 'Unemployment', 'UnemploymentRt')

# Incomplete data sets: Carson City Nv, Pierre SD, Jefferson City Mo, Montpelier Vt, Olympia Wa

statelst <- c('AlbanyNy', 'AtlantaGa','AustinTx', 'BatonRougeLa', 'BismarkNd', 'BoiseId', 'BostonMaMetro', 'CharlestonWv'
              ,'CheyenneWy', 'ColumbiaSc', 'ColumbusOh', 'DenverCo','DesMoinesIa', 'DoverDe', 'HarrisburgPa'
              ,'DesMoinesIa', 'DoverDe', 'HarrisburgPa', 'HartfordCt', 'IndianapolisIn','JacksonMs'
              ,'LansingMi','LincolnNe', 'LittleRockAr','MadisonWi', 'MinneapolisMn', 'MontgomeryAl'
              ,'NashvilleTn', 'OklahomaCityOk', 'PhoenixAz', 'ProvidenceRi', 'RaleighNc', 'RichmondVa'
              , 'SacramentoCa', 'SalemOr', 'SaltLakeCityUt', 'SantaFeNm', 'SpringfieldIl', 'TallahasseeFl'
              ,'TopekaKs', 'TrentonNj')
for (state in statelst) {
  for (dl in datalst) {
    do.call("<-",list(paste0(state,dl), data.frame(read_excel(paste0("~/Documents/Data_Science/Analytics/StateCapitalEcon/", state, dl, ".xlsx"), skip = 11))))
    }
  for (dl in employlst) {
      do.call("<-",list(paste0(state,dl), data.frame(read_excel(paste0("~/Documents/Data_Science/Analytics/StateCapitalEcon/", state, dl, ".xlsx"), skip = 10))))
  }
}


#AlbanyNyV <- c(t(AlbanyNyInformation[,-1]))


