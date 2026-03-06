#'  Forest Growth 
#' @param time time since start
#' @param P population
#' @param parms - as list with two values, r, K
#' @param r exponential growth rate before before canopy closure
#' @param g growth rate for logistic phase
#' @param K carrying capacity 
#' @return derivative of population with time

# three parameters to include: 
# output: dC
# first function
# C: size of forest (in carbon terms)

forest_growth <- function(time, C, parms, thresh = 50) {
  #Below threshold
  if (C < thresh) {
    dC <- parms$r * C 
  # Above threshold 
  } else if (C >= thresh) {
    dC <- parms$g * (1 - C / parms$K)
  }
  return(list(dC))
}
  
  