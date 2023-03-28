#' Forma de nombrar columnas ya definidas
#'
#' @param data
#' @param columna
#' @param nuevo_nombre
#'
#' @return a table with names
#' @export
#'
#' @examples
#' NColumn(genotype_analysis, X1, ID)
#'
#'
Ncolumn <- function(data, columna, nuevo_nombre){
  names(data)[which(names(data) == columna)] <- nuevo_nombre
  return(data)
}
