# Load libraries
library(tidyverse)

# Import dataset using relative path for reproducibility
nhis_data <- read.csv("data/NHIS _Data_2021.csv")

# Initial exploration
str(nhis_data)
summary(nhis_data)
head(nhis_data)