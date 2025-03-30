here::i_am("code/00_clean_data.R")

# Define absolute path to data
absolute_path_to_data <- here::here("data", "bank-full.csv")

# Load the dataset
data <- read.csv(absolute_path_to_data, sep = ";", header = TRUE)

# Load required libraries
library(dplyr)

# Remove the 'duration' column as per instructions
data <- data %>% select(-duration)

# Save the cleaned data
saveRDS(
  data,
  file = here::here("output/data_clean.rds")
)
