# Install/load ggplot2
if(!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

# ------------------- Titanic Dataset -------------------

# 1. Histogram of Age
ggplot(titanic, aes(x = age)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Age (Titanic)", x = "Age", y = "Count")

# 2. Bar chart of Pclass vs Count
ggplot(titanic, aes(x = factor(pclass))) +
  geom_bar(fill = "orange", color = "black") +
  labs(title = "Number of Passengers by Pclass", x = "Pclass", y = "Count")

# 5. Pie chart of Survivors vs Non-Survivors
survived_counts <- table(titanic$survived)
pie(survived_counts,
    labels = c("Not Survived", "Survived"),
    col = c("red", "green"),
    main = "Proportion of Survivors (Titanic)")

# ------------------- Lung Capacity Dataset -------------------

# 3. Boxplot of LungCap by Gender
ggplot(lungcap_data, aes(x = Gender, y = `LungCap(cc)`)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "Lung Capacity by Gender", x = "Gender", y = "Lung Capacity (cc)")

# ------------------- Facebook Dataset -------------------

# 4a. Scatter plot of Likes vs Comments
ggplot(fb_data, aes(x = Page.total.likes, y = Lifetime.Post.Total.Reach)) +
  geom_point(color = "blue") +
  labs(title = "Likes vs Reach (Facebook)", x = "Page Total Likes", y = "Lifetime Post Total Reach")

# 4b. Histogram of Shares
ggplot(fb_data, aes(x = Lifetime.Post.Total.Reach)) +
  geom_histogram(binwidth = 1000, fill = "purple", color = "black") +
  labs(title = "Histogram of Shares (Facebook)", x = "Shares", y = "Count")

