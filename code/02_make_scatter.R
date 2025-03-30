here::i_am("code/02_make_scatter.R")

# Load cleaned data
data <- readRDS(
  file = here::here("output/data_clean.rds")
)

# Load required libraries
library(ggplot2)

# Create a histogram of age distribution by subscription status
histogram <- 
  ggplot(data, aes(x = age, fill = y)) +
  geom_histogram(position = "identity", alpha = 0.6, bins = 30) +
  scale_fill_manual(values = c("#F8766D", "#00BFC4"), 
                    name = "Subscription",
                    labels = c("No", "Yes")) +
  labs(title = "Age Distribution by Subscription Status",
       x = "Client Age", y = "Count") +
  theme_minimal() +
  theme(legend.position = "top",
        plot.title = element_text(hjust = 0.5, size = 14, face = "bold"))

# Save the plot
ggsave(
  here::here("output/histogram.png"),
  plot = histogram,
  device = "png"
)
