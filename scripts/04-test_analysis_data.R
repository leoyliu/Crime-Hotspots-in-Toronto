#### Preamble ####
# Purpose: Tests the structure and validity of the analysis dataset
# Author: Yuanyi (Leo) Liu
# Date: 26 September 2024
# Contact: leoy.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - The `tidyverse` package must be installed and loaded
# - 03-clean_data.R must have been run
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####
# Load dataset
cleaned_data <- read.csv("data/02-analysis_data/analysis_data.csv", check.names = FALSE)

# Test 1: Check for missing values for cleaned_data
test1_result <- !any(is.na(cleaned_data))
print(paste("Test 1 Passed:", test1_result))

# Test 2: Check for duplicated rows for cleaned_data
test2_result <- !any(duplicated(cleaned_data))
print(paste("Test 2 Passed:", test2_result))

# Test 3: Check the number of columns for cleaned_data
expected_num_cols <- 91
test3_result <- ncol(cleaned_data) == expected_num_cols
print(paste("Test 3 Passed:", test3_result))

# Test 4: Check the number of rows for cleaned_data
expected_num_rows <- 158
test4_result <- nrow(cleaned_data) == expected_num_rows
print(paste("Test 4 Passed:", test4_result))

# Test 5: Check that all values are non-negative
test5_result <- all(apply(cleaned_data[,-1], 2, function(x) all(x >= 0)))
print(paste("Test 5 Passed:", test5_result))