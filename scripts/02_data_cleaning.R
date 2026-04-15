# Import tidyverse
library(tidyverse)

# Load original dataset
nhis_data <- read.csv("data/NHIS _Data_2021.csv")

# Select only the required variables
nhis_subset <- nhis_data %>%
  select(AGEP_A, WEIGHTLBTC_A, HEIGHTTC_A, SEX_A, HISPALLP_A, EDUCP_A, PHSTAT_A, LSATIS4R_A)

# Removing missing and non-response codes by removing rows where any columns have codes 7, 8, 9, 97, 98, 99, 996, 997, 998, or 999
# Nest ifelse() with respective codes into mutate()
# Change codes to NAs, then delete at the end
nhis_clean <- nhis_subset %>%
  # Remove 97-99 from AGEP_A
  mutate(AGEP_A = ifelse(AGEP_A >= 97, NA, AGEP_A)) %>%
  # Remove 996-999 from WEIGHTLBTC_A
  mutate(WEIGHTLBTC_A = ifelse(WEIGHTLBTC_A >= 996, NA, WEIGHTLBTC_A)) %>%
  # Remove 96-99 from HEIGHTTC_A
  mutate(HEIGHTTC_A = ifelse(HEIGHTTC_A >= 96, NA, HEIGHTTC_A)) %>%
  # Remove 97-99 from HISPALLP_A
  mutate(HISPALLP_A = ifelse(HISPALLP_A >= 97, NA, HISPALLP_A)) %>%
  # Remove 7, 8, 9 from SEX_A, PHSTAT_A, LSATIS4R_A, and EDUCP_A
  # Use across() to work with multiple variables at once
  mutate(across(c(SEX_A, PHSTAT_A, LSATIS4R_A, EDUCP_A),
                ~ ifelse(.x %in% c(7, 8, 9), NA, .x))) %>%
  # Remove all rows that now have an NA
  drop_na()
  