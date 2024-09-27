#### Preamble ####
# Purpose: Tests the structure and validity of the simulated dataset
# Author: Yuanyi (Leo) Liu
# Date: 26 September 2024
# Contact: leoy.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - The `tidyverse` package must be installed and loaded
# - 00-simulate_data.R must have been run
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####
# Load dataset
simulated_data <- read.csv("data/00-simulated_data/simulated_data.csv", check.names = FALSE)

# Test 1: Check for missing values for simulated_data
test1_result <- !any(is.na(simulated_data))
print(paste("Test 1 Passed:", test1_result))

# Test 2: Check for duplicated rows for simulated_data
test2_result <- !any(duplicated(simulated_data))
print(paste("Test 2 Passed:", test2_result))

# Test 3: Check the number of columns for simulated_data
expected_num_cols <- 11
test3_result <- ncol(simulated_data) == expected_num_cols
print(paste("Test 3 Passed:", test3_result))

# Test 4: Check the number of rows for simulated_data
expected_num_rows <- 10
test4_result <- nrow(simulated_data) == expected_num_rows
print(paste("Test 4 Passed:", test4_result))

# Test 5: Check for positive values in year columns
year_columns <- c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021', '2022', '2023')
test5_result <- all(sapply(simulated_data[year_columns], function(x) all(x >= 0)))
print(paste("Test 5 Passed:", test5_result))