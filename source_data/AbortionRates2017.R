library(tidyverse)
Map <- read_csv("source_data/NationalAndStatePregnancy_PublicUse.csv")

Mapratesall<-Map %>% select( "year", "state", contains("abortionrate"))

Maprates<-Mapratesall %>% 
  select(-contains("ratelt15"), -contains("1517"), -contains("1819"))
Mapabortionrates<-Maprates %>% 
  select(-contains("1519"))

Mapabortionrates 

write_csv(Mapabortionrates, "derived_data/Mapabortionrates.csv");


AbortionRate<-Mapabortionrates %>% filter(year==2017) %>% 
  select(state, abortionratetotal) %>% mutate(policy=c(7, 1, 7, 7, 0, 2, 0, 0, 1, 4, 5,
                  0, 4, 1, 7, 3, 7, 6, 7, 0, 1, 
                  2, 6, 3, 8, 6, 1, 6, 1, 1, 0,
                  0, 1, 7, 8, 6, 6, 0, 5, 3, 6,
                  7, 5, 10, 0, 5, 0, 6, 0, 4, 7, 1))


AbortionRate

Figure_4<-ggplot(AbortionRate, aes(x = state, y = abortionratetotal, color=factor(policy))) +
  geom_col() + theme_minimal() + 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  geom_hline(yintercept = 13.5) + annotate("text", x=47, y=14, label="US Average Abortion Rate", size=3) +
  labs(x = "State", y="Abortion Rate", fill= "Number of Restrictive Policies") +
  ggtitle("State Total Abortion Rates and Number of Restrictive Abortion Policies 2017")
Figure_4

saveRDS(Figure_4,file="figures/Figure4.rds")
readRDS("figures/Figure4.rds")
