here::i_am("code/03_models.R")

# Load cleaned data
data <- readRDS(
  file = here::here("output/data_clean.rds")
)

# Load required libraries
library(gtsummary)
library(broom.helpers)
# Fit a logistic regression model (example: predicting subscription based on age, job, and marital status)
binary_mod <- glm(
  I(y == "yes") ~ age + job + marital,
  data = data,
  family = binomial()
)

# Create regression table
regression_table <- 
  tbl_regression(binary_mod, exponentiate = TRUE) %>%
  add_global_p()

# Save the model and table
both_models <- list(
  binary = binary_mod
)
saveRDS(
  both_models,
  file = here::here("output/both_models.rds")
)

both_regression_tables <- list(
  binary = regression_table
)
saveRDS(
  both_regression_tables,
  file = here::here("output/both_regression_tables.rds")
)
