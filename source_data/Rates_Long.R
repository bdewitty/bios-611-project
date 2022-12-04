library(tidyverse)
install.packages("reshape2")
library(reshape2)
source("source_data/USRates.R")

USrateslong <- melt(USrates, id.vars=c("year","state"))

USpregnancyrates <- read_csv("derived_data/USpregnancyrates.csv")
USpregrateslong <- melt(USpregnancyrates, id.vars=c("year","state"))

USabortionrates <- read_csv("derived_data/USabortionrates.csv")
USabortrateslong <- melt(USabortionrates, id.vars=c("year","state"))

USbirthrates <- read_csv("derived_data/USbirthrates.csv")
USbirthrateslong <- melt(USbirthrates, id.vars=c("year","state"))



