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
