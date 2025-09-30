#Functions in R

#1. Write a function add_numbers(a, b) to return the sum of two numbers.

my_func <-function(a,b){
  sum_of_no=a+b
  print(sum_of_no)
}

my_func(2,3)

#2. Write a function square(n) to return the square of a number.
my_func <-function(a){
  square =a*a
  print(square)
}

my_func(6)

#3. Write a function to calculate the factorial of a number using recursion.


my_fact <-function(n){
  if(n==1 || n==0){
    return (1)
  }
  else{
    return( n * my_fact(n-1))
  }
}
my_fact(5)

#4. Write a function to check if a number is prime.

myfunc_even <-function(n){
  if (n %%2 !=0){
    print(paste("number is prime"))
  }
  else{
    print(paste("number is not prime"))
  }
}
myfunc_even(1)

#5. Write a function that takes a vector and returns:
#1. Mean
#2. Median
#3. Standard Deviation

summary_stats <- function(vec) {
  if (!is.numeric(vec)) {
    stop("Input vector must be numeric.")
  }
  
  mean_val <- mean(vec, na.rm = TRUE)
  median_val <- median(vec, na.rm = TRUE)
  sd_val <- sd(vec, na.rm = TRUE)
  
  return(list(mean = mean_val, median = median_val, sd = sd_val))
}

v <- c(1, 2, 3, 4, 5, NA)
summary_stats(v)


#6. Write a function that accepts a data frame and a column name,
#and returns the top 5 highest values in that column


top_5_values <- function(df, column_name) {
  if (!column_name %in% names(df)) {
    stop("Column not found in the data frame.")
  }
  
  column_data <- df[[column_name]]
  
  if (!is.numeric(column_data)) {
    stop("Column must be numeric to find top values.")
  }
  
  top_values <- sort(column_data, decreasing = TRUE)
  return(head(top_values, 5))
}

df <- data.frame(a = c(10, 20, 5, 30, 25, 15))
top_5_values(df, "a")