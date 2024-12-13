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

ggplot(data=krk_apartments, aes(x = factor(rooms))) +
  geom_bar(fill = "purple", color = "black", width = 0.7) +
  geom_text(
    stat = "count",
    aes(label = ..count..),
    vjust = -0.5,
    color = "black",
    size = 2
  ) +
  labs(
    title = "Apartments by Number of Rooms in Krakow",
    x = "Number of Rooms",
    y = "Number of Apartments"
  ) +
  theme_minimal()