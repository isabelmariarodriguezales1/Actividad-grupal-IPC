rm(list=ls())
setwd("C:/Users/julia/Desktop/BIOINF MASTER/Programas y scripts/estadistica y R/tema 3")

f <- list.files(pattern="^Dataset.*genes\\.csv$", ignore.case=TRUE)[1]
df <- read.csv(f, fileEncoding="UTF-8-BOM", check.names=FALSE)

library(ggplot2)
library(dplyr)
library(pheatmap)

#### ---- Heatmaps ---- ####
# Seleccionar solo las columnas de expresión génica
bioquimica <- df %>% select("glucosa":"neutrofilos", "chol":"cpk", starts_with("AQ_"))
corr_matrix <- cor(bioquimica, method = "spearman")
corr_matrix

rows <- 17:nrow(corr_matrix)
cols <- colnames(corr_matrix)[1:16]
corr_matrix_sel <- corr_matrix[rows, cols, drop = FALSE]

# Graficar heatmap
set.seed(1995)
pheatmap(corr_matrix_sel, 
         main = "Heatmap",
         cluster_cols = TRUE,
         cluster_rows = TRUE,
         color = colorRampPalette(c("blue", "white", "red"))(100))
