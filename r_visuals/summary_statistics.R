---
  title: 'Summary Statistics'
---
  
# firstly need to install package to work with "ggplot2"
install.packages("ggplot2")
# loading library to make visuals
library(ggplot2)
library(scales)

# importing data
krk_apartments <- read.csv('apartments_krakow_6month_final.csv')

ggplot(data=krk_apartments, aes(x = factor(rooms), y = price)) +
  stat_summary(fun = "mean", geom = "bar", fill = "gold", color = "blue") +
  labs(title = "Average Apartment Price by Number of Rooms", x = "Number of Rooms", y = "Average Price (PLN)") +
  theme_minimal()