rm(list=ls())
setwd("C:/Users/master/estadistica y R/tema 3")


f <- list.files(pattern="^Dataset.*genes\\.csv$", ignore.case=TRUE)[1]
df <- read.csv(f, fileEncoding="UTF-8-BOM", check.names=FALSE)

library(ggplot2)
library(dplyr)
library(pheatmap)



#### ---- Histogramas ---- ####
ggplot(df, aes(x = edad, fill = sexo)) +
  geom_histogram(color = "black", position = "dodge", bins = 20) +
  labs(
    title = "Distribución de la Edad",
    x = "Edad (años)",
    y = "Frecuencia"
  ) +
  scale_x_continuous(breaks = seq(20, 100, by = 3)) + # Etiquetas cada 3 años
  scale_fill_manual(values = c("purple", "seagreen3")) + # Morado y verde
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))


