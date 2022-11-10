library(tidyverse)
install.packages("reshape2")
library(reshape2)
library(ggplot2)

df<-read_csv("source_data/NationalAndStatePregnancy_PublicUse.csv")

NCdata<-filter(df, state=="NC", year>=2007);
NCratesall<-NCdata %>% select( "year", "state", contains("pregnancyrate") | 
                                 contains("abortionrate") | 
                                 contains("birthrate"))
NCrates<-NCratesall %>% 
  select(-contains("ratelt15"), -contains("1517"), -contains("1819"))

NCrates<-USrates %>%
  select(-contains("1519"))

write_csv(NCrates, "derived_data/NCrates.csv")

NCpregnancyrates<-NCrates %>% 
  select("year", "state", contains("pregnancyrate")) %>% 
  rename( "Under 20"= "pregnancyratelt20",
          "20-24"="pregnancyrate2024",
          "25-29"="pregnancyrate2529",
          "30-34"="pregnancyrate3034",
          "35-39"="pregnancyrate3539",
          "40 and older"="pregnancyrate40plus",
          "Total"="pregnancyratetotal"
  )

write_csv(NCpregnancyrates, "derived_data/NCpregnancyrates.csv")

NCabortionrates<-NCrates %>% 
  select("year", "state", contains("abortionrate")) %>% 
  rename( "Under 20"= "abortionratelt20",
          "20-24"="abortionrate2024",
          "25-29"="abortionrate2529",
          "30-34"="abortionrate3034",
          "35-39"="abortionrate3539",
          "40 and older"="abortionrate40plus",
          "Total"="abortionratetotal"
  )

write_csv(NCabortionrates, "derived_data/NCabortionrates.csv");

NCbirthrates<-NCrates %>% 
  select("year", "state", contains("birthrate")) %>%
  rename( "Under 20"= "birthratelt20",
          "20-24"="birthrate2024",
          "25-29"="birthrate2529",
          "30-34"="birthrate3034",
          "35-39"="birthrate3539",
          "40 and older"="birthrate40plus",
          "Total"="birthratetotal"
  )

write_csv(NCbirthrates, "derived_data/NCbirthrates.csv")