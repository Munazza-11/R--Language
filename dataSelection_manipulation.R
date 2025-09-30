install.packages("dplyr")

library(dplyr)
library(readxl)

# Titanic dataset
titanic <- read.csv("train_titanic.csv")

# Select columns
titanic_selected <- titanic %>% select(Name, Sex, Age, Survived)

# Passengers older than 50
titanic_over50 <- titanic_selected %>% filter(Age > 50)

# Count survivors by class
survivors_by_class <- titanic %>%
  filter(Survived == 1) %>%
  group_by(Pclass) %>%
  summarise(SurvivorCount = n())

# Facebook dataset
fb_data <- read.csv("dataset_Facebook.csv", sep=";")

# Post with max likes
#max_likes_post <- fb_data %>% filter(like == max(like, na.rm = TRUE))

max_likes_post <- fb_data %>% filter(Page.total.likes == max(Page.total.likes, na.rm = TRUE))


# Average shares
#avg_shares <- mean(fb_data$share, na.rm = TRUE)
avg_shares <- mean(fb_data$Lifetime.Post.Total.Reach, na.rm = TRUE)


# Add Engagement column
fb_data <- fb_data %>% mutate(Engagement = like + comment + share)

# Lung Capacity dataset
lungcap_data <- read_excel(file.choose())  # choose file
colnames(lungcap_data)


# Correct way
children_under12 <- lungcap_data %>% filter(`Age( years)` < 12)

# Average Lung Capacity by Gender
avg_lung_by_gender <- lungcap_data %>% 
  group_by(Gender) %>% 
  summarise(avg_lung = mean(`LungCap(cc)`, na.rm = TRUE))

# Child with Maximum Lung Capacity
max_lung_child <- lungcap_data %>% filter(`LungCap(cc)` == max(`LungCap(cc)`, na.rm = TRUE))

