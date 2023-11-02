library(tidyverse)

transform <- function(data, remove_na = F) {
  #' removes missing values and converts 
  #' temperature from Fahrenheit to Celsius
  
  if (remove_na) {
    data <- na.omit(data)
  }
  
  transformed_data <- data %>%
    mutate(Temp_C = ((data$Temp - 32) * 5/9)) %>%
    signif(3)
  
  return(transformed_data)
}

