# Functions for HDAT9800 Health Data Visualisation and Communication


#' Show an index of available tutorials
#'
#' @return
#' @export
#'
#' @examples
#' index()
index <- function(){

  learnr::available_tutorials(package = 'hdat9800tutorials')

}
