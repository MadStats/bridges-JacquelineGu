##setwd("/Users/jacqueline/Downloads")
data2016=read.csv("slubkin_992016-20170106140351.txt",header = TRUE,sep=",")

lat <- c() #latitude
long <- c() #longitude
e = 1
r = 1
for (e in 1:nrow(data2016)) {
  if (data2016[e,1] == "55") {
    lat[r] <- data2016$LAT_016[e]
    long[r] <- data2016$LONG_017[e]
    r=r+1
  }
  e=e+1
}
BridgeID <- paste(lat, long, sep = ",")

StateCode <- c()
CountyCode <- c()
q = 1
w = 1
for (q in 1:nrow(data2016)) {
  if (data2016[q,1] == "55") {
    StateCode[w] <- data2016$STATE_CODE_001[q]
    CountyCode[w] <- data2016$COUNTY_CODE_003[q]
    w=w+1
  }
  q=q+1
}
code<- paste(StateCode, CountyCode, sep = ",")
