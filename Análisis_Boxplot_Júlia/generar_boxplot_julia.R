rm(list=ls())
setwd("C:/Users/socla/Desktop/MASTER/Estadistica y R")
f <- list.files(pattern="^Dataset.*genes\\.csv$", ignore.case=TRUE)[1]
df <- read.csv(f, fileEncoding="UTF-8-BOM", check.names=FALSE)
library(ggplot2)
ggplot(df, aes(x = tratamiento, y = glucosa, fill = sexo)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Distribución de Glucosa por Sexo", x = "Sexo", y = "Nivel de Glucosa (mg/dL)") +
  scale_fill_manual(values = c("lightblue", "lightyellow")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))
