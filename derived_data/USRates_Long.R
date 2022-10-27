USrateslong <- melt(USrates, id.vars=c("year","state"))

USpregrateslong <- melt(USpregnancyrates, id.vars=c("year","state"))

USabortrateslong <- melt(USabortionrates, id.vars=c("year","state"))

USbirthrateslong <- melt(USbirthrates, id.vars=c("year","state"))



