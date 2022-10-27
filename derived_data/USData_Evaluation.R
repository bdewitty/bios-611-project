library(tidyverse)
install.packages("reshape2")
library(reshape2)
df<-read_csv("project/bios-611-project/source_data/NationalAndStatePregnancy_PublicUse.csv")
USdata<-filter(df, state=="US")
USratesall<-USdata %>% select( "year", "state", contains("pregnancyrate") | 
                                contains("abortionrate") | 
                                contains("birthrate"))
USrates<-USratesall %>% select(-"pregnancyratelt15", -"pregnancyratelt20", -"abortionratelt15", -"abortionratelt20")
USrateslong <- melt(USrates, id.vars=c("year","state"))

ensure_directory("derived_data");
write_csv(USrateslong, "bios-611-project/derived_data/USrates.csv");

USpregnancyrates<-USrates %>% select("year", "state", contains("pregnancyrate"))
head(USpregnancyrates)
USpregrateslong <- melt(USpregnancyrates, id.vars=c("year","state"))

USabortionrates<-USrates %>% select("year", "state", contains("abortionrate"))
USabortrateslong <- melt(USabortionrates, id.vars=c("year","state"))

USbirthrates<-USrates %>% select("year", "state", contains("birthrate"))
USbirthrateslong <- melt(USbirthrates, id.vars=c("year","state"))



