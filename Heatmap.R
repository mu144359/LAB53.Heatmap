# Hecho con gusto por Selene Muñoz Ortega (UAEH)

# LABORATORIO 53 - HEATMAP

###############################################
# 2.A SACAR HEATMAP DE LA MATRIZ RCA BINARIA #####
##############################################

# instalar paqueterías
install.packages("pheatmap")
install.packages("viridisLite")

# llamar librerías
library(pheatmap)
library(viridis)

# cargar datos
file.choose()

heatmap_1 <- as.matrix(
  read.csv("C:\\Users\\munoz\\Dropbox\\Selene\\Doctorado\\4to semestre\\Unidad 2\\Lab45\\RCABIN.csv" ,
           sep = "," ,
           header = T,
           row.names = 1))

# graficar mapa de calor
pheatmap(heatmap_1)

# paleta de colores
colorz <- c('white', 'orange')

# grafica personalizada
pheatmap(heatmap_1, frontsize = 6, cluster_rows = T, cluster_cols = F, treeheight_row = 1, treeheight_col = 0, 
         main = "", fontsize = 9, annotation_legend = FALSE, display_numbers = FALSE, 
         fontsize_number = 6, col = colorz)
