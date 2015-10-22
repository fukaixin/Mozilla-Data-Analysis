library(RODBC)
channel=odbcConnect("fkx_MySQL", uid="root", pwd="")
sqlTables(channel)

library(htmltools)
library(htmlwidgets)
library(metricsgraphics)
library(RColorBrewer)

data<-sqlFetch(channel,"submit_time")
View(data)
x.data<-as.POSIXct(data$Date)  
library(xts)
data<-xts(data[,2],x.data) 
library(dygraphs)
dygraph(data, main = "New Haven Temperatures") %>% 
dyRangeSelector(dateWindow = c("1998-08-27", "2011-04-01"))
