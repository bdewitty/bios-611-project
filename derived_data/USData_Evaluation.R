library(tidyverse)
install.packages("reshape2")
library(reshape2)
View(NationalAndStatePregnancy_PublicUse)
df<-read_csv("project/bios-611-project/NationalAndStatePregnancy_PublicUse.csv")
USdata<-filter(df, state=="US")
USratesall<-USdata %>% select( "year", "state", contains("pregnancyrate") | 
                                contains("abortionrate") | 
                                contains("birthrate"))
USrates<-USratesall %>% select(-"pregnancyratelt15", -"pregnancyratelt20", -"abortionratelt15", -"abortionratelt20")

USrateslong <- melt(USrates, id.vars=c("year","state"))

ensure_directory("derived_data");
write_csv(USrateslong, "bios-611-project/derived_data/USrates.csv");



# Separate plots for each US rate
ggplot(USrateslong, aes(year,value)) + 
  geom_point() + 
  stat_smooth() +
  facet_wrap(~variable)