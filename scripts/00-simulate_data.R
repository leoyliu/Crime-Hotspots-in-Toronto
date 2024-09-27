#### Preamble ####
# Purpose: Simulates data
# Author: Yuanyi (Leo) Liu
# Email: leoy.liu@mail.utoronto.ca
# Date: 26 September 2024
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
set.seed(853)


#### Simulate ####
Neighborhood <- c("West Humber−Clairville", "Moss Park", "Downtown Yonge East", "Kensington−Chinatown", "Yonge−Bay Corridor", "Wellington Place", "York University Heights", "Annex", "South Riverdale", "West Hill")

# Initialize a tibble
simulated_data <- tibble(Neighborhood = Neighborhood)

# Add columns for each year from 2014 to 2023 with simulated data
for(year in 2014:2023) {
  simulated_data[[as.character(year)]] <- sample(500:10000, length(Neighborhood), replace = TRUE)
}

# Save data #
write_csv(
  x = simulated_data,
  file = "data/00-simulated_data/simulated_data.csv"
)