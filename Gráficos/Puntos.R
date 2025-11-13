rm(list = ls())

setwd("~/Desktop/GENÉTICA/(3) MÁSTER BIOINFORMÁTICA/(1) PRIMER SEMESTRE/INTRODUCCIÓN A LA PROGRAMACIÓN CIENTÍFICA/ACTIVIDADES/Actividad Grupal")

f <- list.files(pattern="^Dataset.*genes\\.csv$", ignore.case=TRUE)[1]

df <- read.csv(f, fileEncoding="UTF-8-BOM", check.names=FALSE)

library(ggplot2)

ggplot(df, aes(x = 1:nrow(df), y = edad)) +
  geom_point(color = "steelblue", size = 3) +
  labs(
    title = "Diagrama de puntos de la edad",
    x = "Participante",
    y = "Edad (años)"
  ) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

ggsave("DPuntos.png", width = 7, height = 5, dpi = 300)
