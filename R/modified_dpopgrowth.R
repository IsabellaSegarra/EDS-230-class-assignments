#'  Logistic population growth derivative
#' @param time time since start
#' @param P population
#' @param biomass - as list with two values, r, K
#' @param r intrinsic growth rate
#' @param harv harvest 
#' @param K maximum carbon capacity of the forest
#' @return derivative of population with time

my_dharvest <- function(time, biomass, parms, harv) {
  dP <- parms$r * biomass * (1 - biomass / parms$K) - harv * biomass
  return(list(dP))
}
