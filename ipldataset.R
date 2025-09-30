
# 1. Load the IPL dataset into R
ipl <- read.csv("batting_bowling_ipl_bat.csv")

# 2. Display the first 10 rows
head(ipl, 10)

# 3. Find the top 5 players with the highest total runs
top5_runs <- ipl[order(-ipl$Runs), c("Name","Runs")][1:5, ]
top5_runs

# 4. Find the player with the highest batting average
ipl[which.max(ipl$Ave), c("Name","Ave")]

# 5. Create a bar chart for the top 10 players by strike rate
top10_SR <- ipl[order(-ipl$SR), c("Name","SR")][1:10, ]
barplot(top10_SR$SR, names.arg=top10_SR$Name, las=2,
        col="darkgreen", main="Top 10 Players by Strike Rate",
        ylab="Strike Rate", cex.names=0.7)

# 6. Find the correlation between matches played and runs scored
# (check if "Mat" column exists in your dataset first)
if("Mat" %in% names(ipl)){
  cor(ipl$Mat, ipl$Runs, use="complete.obs")
} else {
  print("No 'Mat' column found in dataset")
}

