library(tidyverse)
df <- read_csv("source_data/NationalAndStatePregnancy_PublicUse.csv")

USdata<-filter(df, state=="US");
USratesall<-USdata %>% select( "year", "state", contains("pregnancyrate") | 
                                 contains("abortionrate") | 
                                 contains("birthrate"))
USrates<-USratesall %>% select(-"pregnancyratelt15", -"pregnancyratelt20", -"abortionratelt15", -"abortionratelt20");

write_csv(USrates, "derived_data/USrates.csv")

USpregnancyrates<-USrates %>% select("year", "state", contains("pregnancyrate"), -"pregnancyrate1519");

write_csv(USpregnancyrates, "derived_data/USpregnancyrates.csv");

USabortionrates<-USrates %>% select("year", "state", contains("abortionrate"), -"abortionrate1519");

write_csv(USabortionrates, "derived_data/USabortionrates.csv");

USbirthrates<-USrates %>% select("year", "state", contains("birthrate"), -"birthrate1519");

write_csv(USbirthrates, "derived_data/USbirthrates.csv")




