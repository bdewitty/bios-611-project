library(tidyverse)
df <- read_csv("source_data/NationalAndStatePregnancy_PublicUse.csv")

USdata<-filter(df, state=="US");
USratesall<-USdata %>% select( "year", "state", contains("pregnancyrate") | 
                                 contains("abortionrate") | 
                                 contains("birthrate"))
USrates<-USratesall %>% 
  select(-contains("ratelt15"), -contains("1517"), -contains("1819"))
USrates<-USrates %>% 
  select(-contains("1519"))

write_csv(USrates, "derived_data/USrates.csv")

USpregnancyrates<-USrates %>% 
  select("year", "state", contains("pregnancyrate")) %>% 
  rename( "Under 20"= "pregnancyratelt20",
  "20-24"="pregnancyrate2024",
  "25-29"="pregnancyrate2529",
 "30-34"="pregnancyrate3034",
  "35-39"="pregnancyrate3539",
  "40 and older"="pregnancyrate40plus",
  "Total"="pregnancyratetotal"
)

write_csv(USpregnancyrates, "derived_data/USpregnancyrates.csv")

USabortionrates<-USrates %>% 
  select("year", "state", contains("abortionrate")) %>% 
rename( "Under 20"= "abortionratelt20",
  "20-24"="abortionrate2024",
  "25-29"="abortionrate2529",
  "30-34"="abortionrate3034",
  "35-39"="abortionrate3539",
  "40 and older"="abortionrate40plus",
  "Total"="abortionratetotal"
)

write_csv(USabortionrates, "derived_data/USabortionrates.csv");

USbirthrates<-USrates %>% 
  select("year", "state", contains("birthrate")) %>%
  rename( "Under 20"= "birthratelt20",
          "20-24"="birthrate2024",
          "25-29"="birthrate2529",
          "30-34"="birthrate3034",
          "35-39"="birthrate3539",
          "40 and older"="birthrate40plus",
          "Total"="birthratetotal"
  )

write_csv(USbirthrates, "derived_data/USbirthrates.csv")




