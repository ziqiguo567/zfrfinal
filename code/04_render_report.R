here::i_am("code/04_render_report.R")

# Load required libraries
library(rmarkdown)

# Render the report
render(here::here("report", "finalproject2.Rmd"))
