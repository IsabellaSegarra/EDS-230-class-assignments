
# Photovoltaic_energy: This function computes the energy return from a photovoltaic system. 
#' @param A: the solar panel area (m$^2$)
#' @param H: annual average solar radiation (kWh m$^{-2}$)
#' @returns: Energy produced (kWh)

# .......Function......
photovoltaic_energy <- 
  # Define the function arguments to represent the defined equation 
  function(A, H){ 
    # Define equation for energy return in a photovoltaic system 
    E <- A * 0.2 * H * 0.75 
    # Return energy (E)
    return(E) 
  }

# ......Function use.......
photovoltaic_energy(6, 0.8)
