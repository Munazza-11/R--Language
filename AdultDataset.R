#Load the dataset into R
column_names <- c("age","workclass","fnlwgt","education","education_num",
                  "marital_status","occupation","relationship","race","sex",
                  "capital_gain","capital_loss","hours_per_week","native_country","income")
data <- read.csv("adult-data.txt", header=FALSE, col.names=column_names, strip.white=TRUE)

#First 10 rows
# 2. Display the first 10 rows
head(data, 10)

# 3. Find the structure of the dataset 
str(data)

# 4. Find the average age of all individuals 
mean(data$age)

# 5. Count how many individuals earn >50K and how many earn <=50K 
table(data$income)

# 6. Find the most common occupation 
sort(table(data$occupation), decreasing=TRUE)[1] 

# 7. Calculate the average hours-per-week for people earning >50K vs <=50K 
aggregate(hours_per_week ~ income, data, mean)

# 8. Create a bar chart showing the distribution of education levels (base R)
barplot(table(data$education),
        col="steelblue",
        las=2,  # rotate x-axis labels
        main="Distribution of Education Levels",
        xlab="Education",
        ylab="Count")


# 9. Find which native country has the highest percentage of people earning >50K 
country_income <- table(data$native_country, data$income) 
country_percent <- prop.table(country_income, 1) * 100 
highest_country <- rownames(country_percent)[which.max(country_percent[,">50K"])] 
highest_percent <- max(country_percent[,">50K"]) 

highest_country 
highest_percent

