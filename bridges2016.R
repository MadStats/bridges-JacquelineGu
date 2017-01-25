##setwd("C:\\Users\\gsr\\Desktop\\everything\\威斯康辛\\479-1 Data Science in R\\2016hwybronlyonefile")
data2016<-read.csv("slubkin_992016-20170106140351.txt",header = TRUE,sep=",")
data2016.new=data.frame(StateCode=data2016$STATE_CODE_001,HighwayAgencyDistrict=data2016$HIGHWAY_DISTRICT_002,
                        PlaceCode=data2016$PLACE_CODE_004,RecordType=data2016$RECORD_TYPE_005A,
                        FacilityCarried=data2016$FACILITY_CARRIED_007,StructureNumber=data2016$STRUCTURE_NUMBER_008,
                        Location=data2016$LOCATION_009,KilometerPoint=data2016$KILOPOINT_011,Latitude=data2016$LAT_016)