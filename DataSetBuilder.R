# Econ Study data set builder


# SprgfldIl <- rbind(c(t(SpringfieldIlEducationandHealthServices[,-1])),c(t(SpringfieldIlFinancial[,-1])),c(t(SpringfieldIlGovernment[,-1]))
#                   ,c(t(SpringfieldIlInformation[,-1])), c(t(SpringfieldIlManufacturing[,-1])), c(t(SpringfieldIlOtherServices[,-1]))
#                   ,c(t(SpringfieldIlLeisureHospitality[,-1])),c(t(SpringfieldIlProfessionalandBusinessServices[,-1])), c(t(SpringfieldIlTradeTransportationUtilities[,-1])))

#write.csv(SprgfldIl,"SprgfildIl.csv")



region <- 'SpringfieldIl'
sector <- c('EducationandHealthServices', 'Financial', 'Government', 'Information'
            ,'Manufacturing', 'OtherServices', 'LeisureHospitality', 'ProfessionalandBusinessServices'
            ,'TradeTransportationUtilities')


SprgfldIl <- data.frame()


for (sector in sector) {
  output <- c(t(get((paste0(noquote(region),noquote(sector))))[,-1]))
  SprgfldIl <- rbind(SprgfldIl, output)
}
SprgfldIl <- SprgfldIl[,1:125]

# CapMnCivLabr <- mean(c(AlbanyNyInformation, AtlantaGaInformation,AustinTxInformation, BatonRougeLaInformation, BismarkNdInformation, BoiseIdInformation, BostonMaMetroInformation, CharlestonWvInformation
#                        ,CheyenneWyInformation, ColumbiaScInformation, ColumbusOhInformation, DenverCoInformation,DesMoinesIaInformation, DoverDeInformation, HarrisburgPaInformation
#                        ,DesMoinesIaInformation,DoverDeInformation, HarrisburgPaInformation, HartfordCtInformation, IndianapolisInInformation,JacksonMsInformation
#                        ,LansingMiInformation,LincolnNeInformation, LittleRockArInformation,MadisonWiInformation, MinneapolisMnInformation, MontgomeryAlInformation
#                        ,NashvilleTnInformation, OklahomaCityOkInformation, PhoenixAzInformation, ProvidenceRiInformation, RaleighNcInformation, RichmondVaInformation
#                        , SacramentoCaInformation, SalemOrInformation, SaltLakeCityUtInformation, SantaFeNmInformation, SpringfieldIlInformation, TallahasseeFlInformation
#                        ,TopekaKsInformation, TrentonNjInformation))


CivLbrFrc <- data.frame
#output <- data.frame
sector <- c('EducationandHealthServices', 'Financial')

region <- 'SpringfieldIl'
for (region in region) {
  output <- c(t(get((paste0(noquote(region),noquote(sector))))[,-1]))
  CivLbrFrc <- rbind(CivLbrFrc, output)
  #CivLbrFrc <- output
}

region <- c('AlbanyNy', 'AtlantaGa','AustinTx', 'BatonRougeLa', 'BismarkNd', 'BoiseId', 'BostonMaMetro', 'CharlestonWv'
              ,'CheyenneWy', 'ColumbiaSc', 'ColumbusOh', 'DenverCo','DesMoinesIa', 'DoverDe', 'HarrisburgPa'
              ,'DesMoinesIa', 'DoverDe', 'HarrisburgPa', 'HartfordCt', 'IndianapolisIn','JacksonMs'
              ,'LansingMi','LincolnNe', 'LittleRockAr','MadisonWi', 'MinneapolisMn', 'MontgomeryAl'
              ,'NashvilleTn', 'OklahomaCityOk', 'PhoenixAz', 'ProvidenceRi', 'RaleighNc', 'RichmondVa'
              , 'SacramentoCa', 'SalemOr', 'SaltLakeCityUt', 'SantaFeNm', 'SpringfieldIl', 'TallahasseeFl'
              ,'TopekaKs', 'TrentonNj')
sector <- c('CivilianLaborForce')


CivLbrFrc <- data.frame()


for (region in region ) {
  output <- c(t(get((paste0(noquote(region),noquote(sector))))[,-1]))
  CivLbrFrc <- rbind(CivLbrFrc, output)
}
CivLbrFrc <- CivLbrFrc[,1:125]


CivLbrFrc


