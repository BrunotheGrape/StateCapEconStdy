#Read in Data
library(readxl)
library(dplyr)
library(tidyverse)

DataTrans <- function(data) {
  datai <- as.numeric(data[row,])
  dataf <- append(dataf, datai)
  dataf <- dataf[!is.na(dataf)] 
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

state <- 'LittleRockAr'
for (dl in datalst) {
  do.call("<-",list(paste(state,dl), data.frame(read_excel(paste0("~/Documents/Data_Science/Analytics/StateCapitalEcon/", state, dl, ".xlsx"), skip = 11))))
}
for (dl in employlst) {
    do.call("<-",list(paste(state,dl), data.frame(read_excel(paste0("~/Documents/Data_Science/Analytics/StateCapitalEcon/", state, dl, ".xlsx"), skip = 10))))
  }



