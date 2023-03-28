#' Conteo de elementos y señalarlos en filas
#'
#' @param data
#' @param columna
#'
#' @return
#' @export
#'
#' @examples
#' Tablecont(genotype_analysis, X2)
#'
#'
Tablecont <- function(data, columna) {
  # Contar el número de veces que se repite cada elemento en la columna
  conteo <- table(data[[columna]])

  # Encontrar las filas donde se encuentra cada elemento
  filas <- lapply(names(conteo), function(x) which(data[[columna]] == x))

  # Retornar una lista con la tabla de conteo y las filas donde se encuentra cada elemento
  return(list(conteo = conteo, filas = filas))
}
