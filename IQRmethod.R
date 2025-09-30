# ------------------- Titanic Dataset -------------------

# 3. IQR method for Fare
Q1_fare <- quantile(titanic$fare, 0.25, na.rm = TRUE)
Q3_fare <- quantile(titanic$fare, 0.75, na.rm = TRUE)
IQR_fare <- Q3_fare - Q1_fare

lower_fare <- Q1_fare - 1.5 * IQR_fare
upper_fare <- Q3_fare + 1.5 * IQR_fare

# Count passengers outside this range
fare_outliers <- sum(titanic$fare < lower_fare | titanic$fare > upper_fare, na.rm = TRUE)
cat("Number of Fare outliers:", fare_outliers, "\n")

# 4. IQR method for Age
Q1_age <- quantile(titanic$age, 0.25, na.rm = TRUE)
Q3_age <- quantile(titanic$age, 0.75, na.rm = TRUE)
IQR_age <- Q3_age - Q1_age

lower_age <- Q1_age - 1.5 * IQR_age
upper_age <- Q3_age + 1.5 * IQR_age

# Count Age outliers
age_outliers <- sum(titanic$age < lower_age | titanic$age > upper_age, na.rm = TRUE)
cat("Number of Age outliers:", age_outliers, "\n")

# Replace Age outliers with nearest boundary (capping)
titanic$age <- ifelse(titanic$age < lower_age, lower_age,
                      ifelse(titanic$age > upper_age, upper_age, titanic$age))

# ------------------- Lung Capacity Dataset -------------------

# IQR method for LungCap
Q1_lung <- quantile(lungcap_data$`LungCap(cc)`, 0.25, na.rm = TRUE)
Q3_lung <- quantile(lungcap_data$`LungCap(cc)`, 0.75, na.rm = TRUE)
IQR_lung <- Q3_lung - Q1_lung

lower_lung <- Q1_lung - 1.5 * IQR_lung
upper_lung <- Q3_lung + 1.5 * IQR_lung

# Detect outliers
lung_outliers <- lungcap_data$`LungCap(cc)` < lower_lung | lungcap_data$`LungCap(cc)` > upper_lung
cat("Number of LungCap outliers:", sum(lung_outliers), "\n")

# Average LungCap before removal
avg_before <- mean(lungcap_data$`LungCap(cc)`, na.rm = TRUE)

# Remove outliers
lungcap_no_outliers <- lungcap_data[!lung_outliers, ]

# Average LungCap after removal
avg_after <- mean(lungcap_no_outliers$`LungCap(cc)`, na.rm = TRUE)

cat("Average LungCap before removing outliers:", avg_before, "\n")
cat("Average LungCap after removing outliers:", avg_after, "\n")

# ------------------- Conceptual Answers -------------------

# 1. Difference between Boxplot vs IQR method:
# - Boxplot visually identifies outliers using whiskers.
# - IQR method calculates exact numerical boundaries (Q1-1.5*IQR, Q3+1.5*IQR).
# - Boxplot is visual; IQR is programmatic and precise.

# 2. When to remove vs cap outliers:
# - Remove outliers: when extreme values are likely errors or will bias analysis.
# - Cap outliers: when values are valid but extreme, to reduce their effect without losing data.

