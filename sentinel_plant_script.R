# This script is meant to find the actual number of bagged and open 
  # sentinel plants per field for Bloom pollination services data.

# Set wd

library(Rmisc)
library(tidyverse)

# Read in the file
strawb <- read.csv("Bloom_PollinationServicesData_2016.csv")

# Change Specimen column name to be ~~normal~~
colnames(strawb)
strawb <- rename("Specimen" = Specimen..)
strawb1 <- unique(strawb[c(Specimen..,Location,Treatment)])
