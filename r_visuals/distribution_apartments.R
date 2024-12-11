---
  title: 'Visualizing'
---

# firstly need to install package to work with "ggplot2"
install.packages("ggplot2")
# loading library to make visuals
library(ggplot2)
library(scales)

# importing data
krk_apartments <- read.csv('apartments_krakow_6month_final.csv')

ggplot(data=krk_apartments, aes(x = price)) +
  geom_histogram(binwidth = 10000, fill = "red", color = "white") +
  scale_x_continuous(
    breaks = seq(0, 2800000, by = 200000), # controling over tick positions
    labels = c("0", "200k", "400k", "600k", "800k",
               "1M", "1.2M", "1.4M", "1.6M", "1.8M",
               "2M", "2.2M", "2.4M", "2.6M", "2.8M") # controling labels
  ) +
  labs(
    title = "Distribution of Apartment Prices in Krakow",
    x = "Price (PLN)",
    y = "Number of Apartments"
  ) +   theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    plot.subtitle = element_text(hjust = 0.5, face = "italic"),
    axis.text.x = element_text(angle = 45, hjust = 1)
  )