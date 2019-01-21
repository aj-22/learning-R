
seatbelts <- read.csv("seatbelts.csv")
head(seatbelts)

dim(seatbelts)
colnames(seatbelts)
summary(seatbelts)
class(seatbelts)
nrow(seatbelts)

mean(seatbelts[,"DriversKilled"])

mean(seatbelts[ seatbelts[,"year"]>=1969 & seatbelts[,"year"]<=1970 , "DriversKilled"])

by(seatbelts[, "DriversKilled"], seatbelts[,"year"], mean)

colnames(seatbelts)

head(seatbelts)

plot(seatbelts[,"kms"], seatbelts[,"drivers"])


by(seatbelts[, "DriversKilled"], seatbelts[,"year"], mean)

mean(seatbelts[ seatbelts[,"year"]==1970, "DriversKilled"])
# 133.1667
mean(seatbelts[ seatbelts[,"year"]==1978, "DriversKilled"])
# 127.0833
mean(seatbelts[ seatbelts[,"year"]==1972, "rear"])
# 439.4167
mean(seatbelts[ seatbelts[,"year"]==1980, "rear"])
# 368.4167

(seatbelts$DriversKilled+seatbelts$VanKilled)

plot(seatbelts[,"kms"], seatbelts[,"DriversKilled"])
plot(seatbelts[,"PetrolPrice"], seatbelts[,"drivers"])

plot(seatbelts[,"year"], seatbelts[,"drivers"])

seatbeltcol <- colnames(seatbelts)
abline()

plot(seatbelts[,"kms"], seatbelts[,"drivers"])

seatbelts[,"law"]

head(seatbelts)

max(seatbelts[Seatbelts[,"law"]==0 ,"year.month"])
min(seatbelts[Seatbelts[,"law"]==1 ,"year.month"])
plot(seatbelts[,"year.month"],seatbelts[,"DriversKilled"])
abline(v="1983.083")


mean(seatbelts[Seatbelts[,"law"]==1 ,"DriversKilled"])
mean(seatbelts[Seatbelts[,"law"]==0 ,"DriversKilled"])

mean(seatbelts[Seatbelts[,"year"] ,"DriversKilled"])

plot(unique(seatbelts[,"year"]),mean(seatbelts[,"DriversKilled"]))

aggByYear <- aggregate(seatbelts$DriversKilled, by=list(seatbelts$year), FUN=mean)
plot(aggByYear$Group.1,aggByYear$x)
abline(v="1983")



install.packages("rmarkdown")