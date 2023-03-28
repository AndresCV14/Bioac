#' Barplot de genotipos especficos
#'
#' @param data
#' @param columna
#'
#' @return a barplot of specific genotype
#' @export
#'
#' @import ggplot2
#'
#' @examples
#' Plotgenotype(genotype_analysis, "X7")
#'
#'
Plotgenotype <- function(datos, columna) {
  # Obtener los valores únicos de la columna
  valores_unicos <- unique(datos[[columna]])

  # Contar el número de veces que se repite cada valor único
  conteo <- table(datos[[columna]])

  # Crear un data frame con los valores únicos y su conteo
  df <- data.frame(valor = valores_unicos, conteo = conteo[valores_unicos])

  # Crear un vector de colores para las barras
  colores <- rainbow(length(valores_unicos))

  # Graficar en un diagrama de barras con colores y etiquetas
  barplot(df$conteo, names.arg = df$valor, xlab = columna, ylab = "Frecuencia", col = colores)
  legend("topright", legend = paste(df$valor, "(", df$conteo, ")", sep = ""), fill = colores, bty = "n")
  title(main = paste("Genotypes: ", sum(conteo)))
}
