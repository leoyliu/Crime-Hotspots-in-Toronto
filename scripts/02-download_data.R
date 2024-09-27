#### Preamble ####
# Purpose: Downloads, saves, and reads data from the OpenDataToronto portal
# Author: Yuanyi (Leo) Liu
# Date: 26 September 2024
# Contact: leoy.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: The `opendatatoronto` package must be installed
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(dplyr)


#### Download data ####
# get package
package <- show_package("neighbourhood-crime-rates")
package

# get all resources for this package
resources <- list_package_resources("neighbourhood-crime-rates")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()

#### Save data ####
write_csv(
  x = data,
  file = "data/01-raw_data/raw_data.csv"
)