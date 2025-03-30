here::i_am("code/01_make_table1.R")

# Load cleaned data
data <- readRDS(
  file = here::here("output/data_clean.rds")
)

# Load required libraries
library(dplyr)
library(knitr)
library(kableExtra)

# Create a table summarizing subscription rates by job type
subscription_by_job <- data %>%
  group_by(job, y) %>%
  summarise(Count = n(), .groups = "drop") %>%
  mutate(Percentage = round(Count / sum(Count) * 100, 1)) %>%
  arrange(desc(Percentage))

# Save the table as an RDS object (could also be saved as HTML with kableExtra if needed)
saveRDS(
  subscription_by_job,
  file = here::here("output/table_one.rds")
)
