#Juan Camilo Rivera 
#Lectura del archivo

#librerias
library(googleVis)

datos_analisis <- read.table("DATA/datos_grafico_centro_cluster.csv", sep =",",header = T)
datos_analisis$week <- as.numeric(datos_analisis$week)
date <- rep("1900",length(datos_analisis$week))

datos_analisis$WeeK <- paste0(date, datos_analisis$week)
datos_analisis$WeeK <- as.Date(as.character(datos_analisis$WeeK), format="%YYYY%w")

d#Repetir una secuencia con las semanas
week <- seq(as.Date("1910/1/1"), as.Date("1910/12/31"), "week")

week <- format(qw, "%W")

datos_analisis$week <- as.Date(datos_analisis$week, format )

head(datos_analisis) 

Motion=gvisMotionChart(datos_analisis, 
                       idvar="Embolse", 
                       timevar="WeeK",
                       xvar= "week")
plot(Motion)

M3 <- gvisMotionChart(Fruits, "Fruit", "Date", date.format="\%YW\%W")
seq.Date()