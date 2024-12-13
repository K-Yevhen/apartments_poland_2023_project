---
  title: 'Summary Statistics'
---
  
# firstly need to install package to work with "ggplot2"
install.packages("ggplot2")
install.packages("scales")
# loading library to make visuals
library(ggplot2)
library(scales)

# importing data
krk_apartments <- read.csv('apartments_krakow_6month_final.csv')


# Two-Variable Relationships
ggplot(data = krk_apartments, aes(x = squareMeters, y = price)) +
  geom_point(alpha = 0.6, color = "darkblue") +
  geom_smooth(formula = y ~ x, method = "lm", color = "red", se = FALSE) +
  scale_y_continuous(
    breaks = seq(0, 3000000, by = 500000),
    labels = c("0", "500k", "1M", "1.5M", "2M",
               "2.5M", "3M")
  ) +
  labs(title = "Relationship Between Price and Apartment Size", x = "Square Meters", y = "Price (PLN)") +
  theme_minimal()

# Quick statistic summary about Number of Rooms and Average Price
ggplot(data=krk_apartments, aes(x = factor(rooms), y = price)) +
  stat_summary(fun = "mean", geom = "bar", fill = "gold", color = "blue") +
  labs(title = "Average Apartment Price by Number of Rooms", x = "Number of Rooms", y = "Average Price (PLN)") +
  theme_minimal()