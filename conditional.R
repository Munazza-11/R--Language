#Conditionals in R
#1. Write an if statement to check if a number is positive or negative.
num <- -5

if (num >= 0) {
  print("Positive")
} else {
  print("Negative")
}

#2. Write an if-else statement to check if a given number is even or odd.
num <- 7

if (num %% 2 == 0) {
  print("Even")
} else {
  print("Odd")
}

#3. Write a program to check if a given year is a leap year.

year <- 2024

if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
  print("Leap Year")
} else {
  print("Not a Leap Year")
}

#4. Take a numeric input for marks and print:
#1. “Pass” if marks >= 40
#2. “Fail” otherwise
marks <- 38

if (marks >= 40) {
  print("Pass")
} else {
  print("Fail")
}

#5. Using nested if-else, assign grades:
#1. Marks >= 90 → A
#2. 75–89 → B
#3. 60–74 → C
#4. <60 → Fail

marks <- 82

if (marks >= 90) {
  print("Grade: A")
} else if (marks >= 75) {
  print("Grade: B")
} else if (marks >= 60) {
  print("Grade: C")
} else {
  print("Fail")
}
