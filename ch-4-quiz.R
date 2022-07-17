library(tidyverse)

df <- import("StateData.xlsx")

# Question 1

df %>%
  filter(region == "South" |
           psychRegions == "Relaxed and Creative") %>%
  print()

# Question 2

df %>%
  mutate(relaxed = recode(psychRegions,
                          "Relaxed and Creative" = "yes",
                          "Friendly and Conventional" = "no",
                          .default = "no")) %>%
  select(state_code, psychRegions, relaxed)