here::i_am("code/04_render_report.R")

# Load required libraries
library(rmarkdown)
library(here)

# Render the report
rmarkdown::render(
  input = here::here("report", "finalproject2.Rmd"),
  output_file = here::here("report", "finalproject2.html")
)