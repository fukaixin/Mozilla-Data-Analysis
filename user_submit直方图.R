library(RODBC)
channel=odbcConnect("fkx_MySQL", uid="root", pwd="")
sqlTables(channel)

library(htmltools)
library(htmlwidgets)
library(metricsgraphics)
library(RColorBrewer)

data2<-sqlFetch(channel,"top10_tabwho")

data2 %>%
  mjs_plot(x=SubmitNum, y=Who, width=500, height=400) %>%
  mjs_bar() %>%
  mjs_axis_x(xax_format = 'plain')

