library(tidyverse)
install.packages("reshape2")
library(reshape2)
source("source_data/USRates_Long.R")
USpregnancyratesfigure<-USpregrateslong %>% rename(Age=variable, Rate=value);
USabortratesfigure<- USabortrateslong %>% rename(Age=variable, Rate=value);
USbirthratesfigure<-USbirthrateslong %>% rename(Age=variable, Rate=value);

Rate_figure<-function(df){
  ggplot(df, aes(year,Rate,col=Age))+geom_line()
}

Figure_1<-Rate_figure(USabortratesfigure)
Figure_1<-Figure_1+labs(
  title= "Abortion Rates in the United States by Age group 1973-2017", 
  x="Year",
  y="Abortion Rate");
Figure_1
saveRDS(Figure_1,file="figures/Figure1.rds")
readRDS("figures/Figure1.rds")

Figure_2<-Rate_figure(USbirthratesfigure)
Figure_2<-Figure_2+labs(
  title= "Birth Rates in the United States by Age group 1973-2017", 
  x="Year",
  y="Birth Rate");
saveRDS(Figure_2,file="figures/Figure2.rds")
readRDS("figures/Figure2.rds")

Figure_3<-Rate_figure(USpregnancyratesfigure)
Figure_3<-Figure_3+labs(
  title= "Pregnancy Rates in the United States by Age group 1973-2017", 
  x="Year",
  y="Pregnancy Rate");
Figure_3
saveRDS(Figure_3,file="figures/Figure3.rds")
readRDS("figures/Figure3.rds")