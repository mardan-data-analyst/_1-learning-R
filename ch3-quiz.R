library(tidyverse)

data(diamonds)
head(diamonds)
View(diamonds)


hist(diamonds$price)

# Question 1

hist(diamonds$price,
     main = "History of the Price of Diamonds",
     ylab = "Frequency",
     xlab = "Price of Diamonds")

# Question 2
diamonds %>%
  select(color, price) %>%
  plot()

# Question 4
data(uspop)
uspop%>%
  plot(
    main = "US Population 1790-1970",
    xlab = "Year",
    ylab = "Population (in millions)"
  )

# Question 5

df <- import("StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code, 
         psychRegions,
         instagram:modernDance) %>% 
  mutate(psychRegions = as.factor(psychRegions)) %>%
  rename(y = psychRegions) %>%
  print()

hc <- df %>%  # Get data
  dist %>%    # Compute distance/dissimilarity matrix
  hclust      # Compute hierarchical clusters

hc %>% plot(labels = df$state_code)

# Question 6
x = c(24, 13, 7, 5, 3, 2)
barplot(x)
barplot(x, col = "red3")

# Question 7
diamonds %>%
  select(clarity) %>%
  table() %>%
  sort(decreasing = T) %>%
  barplot()