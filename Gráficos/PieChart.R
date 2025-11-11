rm(list=ls())
setwd("C:/Users/isabe/OneDrive/Documentos/practicaEst")


f <- list.files(pattern="^Dataset.*genes\\.csv$", ignore.case=TRUE)[1]
df <- read.csv(f, fileEncoding="UTF-8-BOM", check.names=FALSE)

library(ggplot2)
library(dplyr)
library(pheatmap)

#### ---- Pie chart ---- ####
tumor_counts<- df %>%
  count(extension) %>%
  mutate(perc = n / sum(n) * 100, label = paste0(round(perc, 1), "%"))

ggplot(tumor_counts, aes(x = "", y = perc, fill = extension)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Distribución de Tipos de Tumor") +
  theme_void() +
  geom_text(aes(label = label), position = position_stack(vjust = 0.5))
