# Econ Study data set builder

datalst <- list('Manufacturing', 'TradeTransportationUtilities', 'Information'
                ,'Financial', 'ProfessionalandBusinessServices', 'EducationandHealthServices'
                ,'LeisureHospitality', 'OtherServices','Government')



SprgfldIl <- rbind(c(t(SpringfieldIlEducationandHealthServices[,-1])),c(t(SpringfieldIlFinancial[,-1])),c(t(SpringfieldIlGovernment[,-1]))
                  ,c(t(SpringfieldIlInformation[,-1])), c(t(SpringfieldIlManufacturing[,-1])), c(t(SpringfieldIlOtherServices[,-1]))
                  ,c(t(SpringfieldIlLeisureHospitality[,-1])),c(t(SpringfieldIlProfessionalandBusinessServices[,-1])), c(t(SpringfieldIlTradeTransportationUtilities[,-1])))

write.csv(SprgfldIl,"SprgfildIl.csv")
