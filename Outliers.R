# ------------------- Titanic Dataset -------------------

# 1a. Boxplot of Fare to identify outliers
boxplot(titanic$fare,
        main = "Boxplot of Fare (Titanic)",
        ylab = "Fare",
        col = "lightblue",
        horizontal = TRUE)

# 1b. Boxplot of Age by Survived
boxplot(age ~ survived,
        data = titanic,
        main = "Boxplot of Age by Survival Status",
        xlab = "Survived (0=No, 1=Yes)",
        ylab = "Age",
        col = c("orange", "green"))

# 1c. Comment on spread:
# Use IQR or visually: the group with taller box and longer whiskers has more spread.
# You can calculate spread numerically:
tapply(titanic$age, titanic$survived, IQR, na.rm = TRUE)

# ------------------- Facebook Dataset -------------------

# 2a. Boxplot of Likes
boxplot(fb_data$Page.total.likes,
        main = "Boxplot of Likes (Facebook)",
        ylab = "Likes",
        col = "pink",
        horizontal = TRUE)

# 2b. Combined boxplot of Likes, Shares, Comments
boxplot(fb_data$Page.total.likes,
        fb_data$Lifetime.Post.Total.Reach,
        fb_data$Lifetime.Post.Consumptions,
        names = c("Likes", "Shares", "Comments"),
        main = "Boxplot of Likes, Shares, and Comments",
        col = c("lightblue", "lightgreen", "orange"))

# 2c. Comment on variation:
# The tallest box with longest whiskers indicates highest variation.
# You can also check standard deviation numerically:
sapply(fb_data[, c("Page.total.likes", "Lifetime.Post.Total.Reach", "Lifetime.Post.Consumptions")], sd, na.rm = TRUE)

