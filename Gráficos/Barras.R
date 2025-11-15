# Datos proporcionados
agentes <- c("Productos de tabaco",
             "Sustancias radioactivas",
             "Rayos X",
             "Radiación ultravioleta",
             "Acridinas y nitrosaminas",
             "Epóxidos")

mutaciones <- c(1, 1, 1, 1, 1, 1)

# Crear dataframe
datos <- data.frame(Agente = agentes,
                    Mutaciones = mutaciones)

# Si quieres usar ggplot2:
# install.packages("ggplot2")
library(ggplot2)

ggplot(datos, aes(x = Agente, y = Mutaciones)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Comparación de agentes mutágenos y cantidad de mutaciones",
       x = "Agente mutágeno",
       y = "Cantidad de mutaciones") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
