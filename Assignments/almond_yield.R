#' Almond Yield 
#' This function computes the mean, max, and minimum yield anomoly for almond production. For each year, climate conditions (`temp_var` and `precip_var`) are mapped to a predicted deviation in yield from average conditions.
#' @param temp_var: A vector of minimum temperatures (°C) for February of that year. See Lobell et. al 2006 Table 2 for more information. 
#' @param precip_var: A vector of precipitation (mm). See Lobell et. al 2006 Table 2 for more information.

#' @author Isabella Segarra 
#' @return Mean, max, and minimum yield anomly (ton acre−1) for all years. 
#' 
#' 
#' 


almond_yield <- function(temp_var, precip_var) {
  
  # Calculate daily yield anomaly
  y <- (-0.015 * temp_var) - (0.0046 * temp_var^2) - (0.07 * precip_var) + (0.0043 * precip_var^2) + 0.28
  
  
  # Summarize for time series 
  list(
    mean_yield_anomaly = mean(y, na.rm = TRUE),
    max_yield_anomaly  = max(y, na.rm = TRUE),
    min_yield_anomaly  = min(y, na.rm = TRUE)
  )
  
}