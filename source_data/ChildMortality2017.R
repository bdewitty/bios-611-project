library(tidyverse)
df <- read_csv("source_data/data-table.csv")
source("source_data/AbortionRates2017.R")


InfantMortality<-df %>% filter(YEAR=="2017") %>% select(STATE, RATE) %>% rename("state"="STATE", "deathratetotal"="RATE")
InfantMortality
AbortionRate

joined <- AbortionRate %>% inner_join(InfantMortality, by="state");
joined

joined$deathratetotal <- as.numeric(as.character(joined$deathratetotal))
rownames(joined) <- joined$state
joined
write_csv(joined, "derived_data/StateAbortwInfantMort.csv");

Comparison<-ggplot(joined, aes(abortionratetotal, deathratetotal, label=rownames(joined)))
 
Figure_5<-Comparison +
  geom_point() + 
  geom_label(check_overlap = TRUE, aes(fill = factor(policy)), colour = "white", fontface = "bold") +
  labs(x = "Abortion Rate", y="Infant Mortality Rate", fill= "Number of Restrictive Policies") +
  ggtitle("State Total Abortion Rates Compared to Child Mortality Rates 2017")
Figure_5

saveRDS(Figure_5,file="figures/Figure5.rds")
readRDS("figures/Figure5.rds")