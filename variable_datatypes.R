#Variables & Data Types
#1.Create variables to store

name <-"yogita"
age <-20
is_student <-FALSE

name
age
is_student

#2.Create a vector containing the numbers 1 to 10.

num <-c(1,2,3,4,5,6,7,8,9,10)
num
num1 <-c(1:10)
num1


#3.Create a sequence from 5 to 50 with a step size of 5.

numbers <-seq(from=5 ,to=50 ,by=5)
numbers

#4.Store the names of 5 fruits in a character vector and
#display the second and fourth fruit.

fruits <-c("apple","banana","chikko","dragonfruit","strawberry")
fruits[2]
fruits[4]

#5.5. Create a numeric vector of 10 random numbers between 1 and 100, then find:

random_vector <-sample(1:100, 10, replace = TRUE)

#1. Maximum value

maximum <-max(random_vector)

#2. Minimum value

minimum <-min(random_vector)

#3. Mean
mean1 <-mean(random_vector)

random_vector
paste("maximum number is " ,maximum)
paste("minimum number is " ,minimum)
paste("mean number is " ,mean1)

#6.Create a data frame with columns: Name, Age, Marks. 
#Enter at least 5 records.

dataframe<- data.frame(
  Name =c("meet","munazza","nehal"),
  Age =c(20,20,20),
  Marks =c(100,80,70)
)

dataframe

#7. Write code to sort the data frame by Marks in descending order.
# Create sample data
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "Diana"),
  Marks = c(85, 92, 78, 95),
  Grade = c("B", "A", "C", "A")
)

# Sort by Marks descending
df_sorted <- df[order(df$Marks, decreasing = TRUE), ]

print(df_sorted)

#Operators in R
# Perform the following operations:
a <-10 + 5
b <-10 - 5
c <-10 * 5
d <-10 / 5
e <-10 %% 3
f <-10 %/% 3

a
b
c
d
e
f

#Compare if 15 is greater than 10, and if 7 is equal to 7.

a <-(15>10) 
a
b <-(7==7)
b

#. Create two vectors:
a <- c(2, 4, 6, 8)
b <- c(1, 3, 5, 7)

#1. Addition
a+b

#2. Subtraction
a-b

#3. Element-wise multiplication
a*b

#4. Use logical operators to check:
#1. Which elements of a are greater than 5?

a <-c(20,5,6,78)
b <- c(1, 4, 6, 2, 4)

greater_than_5 <-a>5

# Extract those elements:
print(a[greater_than_5])

#2. Which elements of b are less than or equal to 4?
greater_than_4_b <- b >= 4

print(b[greater_than_4_b])


#5. Use %in% to check if the number 5 exists in vector a.

a <- c(1, 3, 5, 7, 9)
exists <- 5 %in% a
exists

#6. Given x <- c(TRUE, FALSE, TRUE, FALSE) and y <- c(TRUE, TRUE, FALSE, FALSE), apply:
 
x <- c(TRUE, FALSE, TRUE, FALSE)
y <- c(TRUE, TRUE, FALSE, FALSE)

print(x & y)
print(!x)
print(x | y)
