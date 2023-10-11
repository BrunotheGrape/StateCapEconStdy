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


######****** Civilian Labor Force *************
sector <- c('CivilianLaborForce')


CivLbrFrc <- data.frame()


for (state in statelst ) {
  output <- c(t(get((paste0(noquote(state),noquote(sector))))[,-1]))
  CivLbrFrc <- rbind(CivLbrFrc, output)
}
CivLbrFrc <- CivLbrFrc[,1:125]



######****** Civilian Labor Force Cohort *************
CivLbrFrcCoHrt <-data.frame()

for (state in Chlst ) {
  output <- c(t(get((paste0(noquote(state),noquote(sector))))[,-1]))
  CivLbrFrcCoHrt <- rbind(CivLbrFrcCoHrt, output)
}
CivLbrFrcCoHrt <- CivLbrFrcCoHrt[,1:125]

######****** Unemployment Rate *************
sector <- c('UnemploymentRt')

UnEmpRt <- data.frame()


for (state in statelst ) {
  output <- c(t(get((paste0(noquote(state),noquote(sector))))[,-1]))
  UnEmpRt <- rbind(UnEmpRt, output)
}
UnEmpRt <- UnEmpRt[,1:125]



######****** Unemployment Rate Cohort *************
UnEmpRtCoHrt <-data.frame()

for (state in Chlst ) {
  output <- c(t(get((paste0(noquote(state),noquote(sector))))[,-1]))
  UnEmpRtCoHrt <- rbind(UnEmpRtCoHrt, output)
}
UnEmpRtCoHrt <- UnEmpRtCoHrt[,1:125]


#**************Total Nonfarm *********************

sector <- c('TotalNonFarm')

TotNonFrm <- data.frame()


for (state in statelst ) {
  output <- c(t(get((paste0(noquote(state),noquote(sector))))[,-1]))
  TotNonFrm <- rbind(TotNonFrm, output)
}
TotNonFrm <- TotNonFrm[,1:125]


#**************Total Nonfarm Cohort *********************

sector <- c('TotalNonFarm')

TotNonFrmCoHrt <- data.frame()


for (state in Chlst ) {
  output <- c(t(get((paste0(noquote(state),noquote(sector))))[,-1]))
  TotNonFrmCoHrt <- rbind(TotNonFrmCoHrt, output)
}
TotNonFrmCoHrt <- TotNonFrmCoHrt[,1:125]

#**************Manufacturing *********************

sector <- c('Manufacturing')

Mnfct <- data.frame()


for (state in statelst ) {
  output <- c(t(get((paste0(noquote(state),noquote(sector))))[,-1]))
  Mnfct <- rbind(Mnfct, output)
}
Mnfct <- Mnfct[,1:125]


#**************Total Manufacturing Cohort *********************

sector <- c('Manufacturing')

MnfctCoHrt <- data.frame()


for (state in Chlst ) {
  output <- c(t(get((paste0(noquote(state),noquote(sector))))[,-1]))
  MnfctCoHrt <- rbind(MnfctCoHrt, output)
}
MnfctCoHrt <- MnfctCoHrt[,1:125]


