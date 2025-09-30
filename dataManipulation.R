# Load dplyr library
if(!require(dplyr)) install.packages("dplyr")
library(dplyr)

# ------------------- Titanic Dataset -------------------

# 1. Rename all columns to lowercase
colnames(titanic) <- tolower(colnames(titanic))

# 2. Sort Titanic data by Age (descending)
titanic_sorted <- titanic %>% arrange(desc(age))

# 3. Create AgeGroup column
titanic <- titanic %>%
  mutate(
    agegroup = case_when(
      age < 12 ~ "Child",
      age >= 12 & age <= 18 ~ "Teen",
      age >= 19 & age <= 59 ~ "Adult",
      age >= 60 ~ "Senior",
      TRUE ~ NA_character_  # for missing values
    )
  )

# 4. Calculate mean Fare by Pclass and Survived
mean_fare_summary <- titanic %>%
  group_by(pclass, survived) %>%
  summarise(mean_fare = mean(fare, na.rm = TRUE))

# Print Titanic outputs
head(titanic, 5)             # first 5 rows with AgeGroup
head(titanic_sorted, 5)      # first 5 rows sorted by Age
mean_fare_summary             # mean fare summary

# ------------------- Facebook Dataset -------------------

# 5. Calculate average likes by post Type
avg_likes_by_type <- fb_data %>%
  group_by(Type) %>%
  summarise(avg_likes = mean(Page.total.likes, na.rm = TRUE))

# Print Facebook output
avg_likes_by_type

