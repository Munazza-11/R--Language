# Load dplyr library
if(!require(dplyr)) install.packages("dplyr")
library(dplyr)

# ------------------- Titanic Dataset -------------------

# 1. Identify columns with missing values
colSums(is.na(titanic))  # shows count of NA in each column

# 2. Replace missing Age values with median Age
median_age <- median(titanic$age, na.rm = TRUE)
titanic$age[is.na(titanic$age)] <- median_age

# 3. Drop rows where Embarked is missing
titanic <- titanic %>% filter(!is.na(embarked))

# Check after handling missing values
colSums(is.na(titanic))  # should show 0 for Age and Embarked

# ------------------- Lung Capacity Dataset -------------------

# Fill missing LungCap values with mean
mean_lungcap <- mean(lungcap_data$`LungCap(cc)`, na.rm = TRUE)
lungcap_data$`LungCap(cc)`[is.na(lungcap_data$`LungCap(cc)`)] <- mean_lungcap

# ------------------- Explanation of Missing Value Methods -------------------

# 1. Listwise deletion:
#    - Remove any row with at least one missing value.
#    - Pros: Simple, easy to implement.
#    - Cons: Can lose a lot of data, biased if data is not missing completely at random (MCAR).

# 2. Pairwise deletion:
#    - Use all available data for each analysis separately.
#    - Pros: Retains more data.
#    - Cons: Correlations or covariances may be inconsistent across analyses.

# 3. Mean/Median imputation:
#    - Replace missing values with the mean or median of the column.
#    - Pros: Simple, keeps dataset size constant.
#    - Cons: Reduces variability, may bias statistical estimates.
