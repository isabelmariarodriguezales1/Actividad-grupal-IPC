# Actividad-grupal-IPC
Este proyecto es una actividad grupal de **Introducción a la Programación Científica** para familiarizarnos con las herramientas de control de versiones **Git y GitHub** aplicadas a un caso práctico de bioinformática.
## Participación de cada coautor
## Objetivos del Proyecto
* Crear y gestionar un repositorio compartido en GitHub
* Fomentar la colaboración segura usando ramas (branching)
* Documentar el proyecto usando Markdown
* Analizar datos de expresión génica
* Generar diversas visualizaciones gráficas para la exploracion de datos
## Estructura del Repositorio
El repositorio está organizado en tres carpetas principales, separando los datos de entrada de los scripts de análisis y las figuras resultantes:
1. **Datos/**: Contiene diferentes datos en formato .csv que se ha utilizado para elaborar los gráficos mencionados en este repositorio
2. **Gráficos/**: Contiene los ***scripts* de análisis de cada gráfico**.
    - Histograma: Contiene el código R (histograma.R) para el análisis exploratorio de la distribución de edades de los participantes, diferenciadas por sexo, mediante un histograma comparativo.
    - Gráfico de barras: Contiene el código R (barras.R) para la visualización de la cuantificación de mutaciones para los diferentes tipos de agentes mutagenos. 
    - Boxplot: Contiene el código R (*generar_boxplot.R*) para el análisis exploratorio de la distribución de datos del nivel de glucosa en función del tratamiento recibido, por sexo.
    - Mapa de calor: Contiene el código R (*Heatmap.R*) usado para visualizar en un mapa de calor la relación entre los valores fisico-químicos (bioquímica) y los genes implicados.
    - Diagrama de puntos: Contiene el código R (*DPuntos.R*) utilizado para generar un diagrama de puntos de la variable edad. Este gráfico representa de forma individual la edad de cada participante, permitiendo visualizar la dispersión y variabilidad de esta variable dentro del conjunto de datos del estudio.
    - Pie Chart: contiene el código R (*PieChart.R*) utilizado para obtener un diagrama de tipo Pie Chart en el que se puede visualizar la distribución proporcional de los distintos tipos de tumor. Esto permite apreciar de un vistazo cuáles son los más representados en el conjunto de datos y facilita la interpretación de la prevalencia relativa de cada categoría dentro del estudio.
3. **Figuras generadas/**: Contiene las figuras PNG de cada gráfico
    - Histograma: Figura histograma PNG resultante (*histograma.PNG*)
    - Gráfico de barras: Gráfico de barras con PNG (*Graficodebarras.PNG*)
    - Boxplot: Figura Boxplot PNG resultante (*RBoxPlot_julia.PNG*)
    - Mapa de calor: Figura PNG del mapa de calor resultante (*Heatmap.R*)
    - Diagrama de puntos: Figura del Diagrama de Puntos PNG resultante (*DPuntos.PNG*)
    - Pie Chart: Figura del Diagrama Pie Chart PNG resultante (*PieChart.PNG*)
