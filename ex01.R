library(tidyverse)

transform <- function(data, remove_na = T) {
  #' temperature from Fahrenheit to Celsius

  transformed_data <- data %>%
    mutate(Temp_C = ((data$Temp - 32) * 5/9)) %>%
    signif(3)
  
  return(transformed_data)
}

