# Load CSV
fb_data <- read.csv("dataset_Facebook.csv", sep=";")
head(fb_data, 10)

# Load Excel
install.packages("readxl")

library(readxl)
lungcap_data <- read_excel(file.choose())
head(lungcap_data, 10)

# Load text file
text_data <- read.table(file.choose(), sep=",", header=TRUE)
head(text_data, 10)

# Load Titanic dataset
titanic <- read.csv("train_titanic.csv")
str(titanic)

# Filter survivors and save
survivors <- subset(titanic, Survived == 1)
write.csv(survivors, "titanic_survivors.csv", row.names=FALSE)

# Save to specific folder
output_dir <- "C:/Users/yogit/Documents/R_yogita/R_dataset"
if(!dir.exists(output_dir)) dir.create(output_dir, recursive = TRUE)
write.csv(survivors, file.path(output_dir, "titanic_survivors.csv"), row.names=FALSE)

