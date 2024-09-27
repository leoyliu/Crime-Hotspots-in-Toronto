#### Preamble ####
# Purpose: Cleans the raw plane data
# Author: Yuanyi (Leo) Liu
# Date: 26 September 2024
# Contact: leoy.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have downloaded the data
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
library(stringr)


#### Cleaned data ####
# Read raw data
raw_data <- read_csv("data/01-raw_data/raw_data.csv")

# Remove unwanted columns
cleaned_data <- raw_data %>% 
  select(-c(`_id`, HOOD_ID, POPULATION_2023, geometry)) %>% 
  select(-grep("RATE", names(.)))

# Replace NA values with 0 and clean column names
cleaned_data <- cleaned_data %>%
  mutate(across(everything(), ~replace_na(., 0))) %>% 
  na.omit() %>% 
  clean_names() %>%
  rename(Neighbourhood = area_name)

# Replace underscores with spaces in column names
colnames(cleaned_data) <- str_replace_all(colnames(cleaned_data), "_", " ")

# Save data #
write_csv(
  x = cleaned_data,
  file = "data/02-analysis_data/analysis_data.csv"
)
