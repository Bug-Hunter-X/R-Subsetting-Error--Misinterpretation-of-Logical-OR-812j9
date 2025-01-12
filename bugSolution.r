```r
# This code demonstrates the correct way to subset a data frame based on a condition,
# resolving the unexpected behavior caused by logical operator precedence.

data <- data.frame(a = c(1, 2, 3, 4, 5), b = c(6, 7, 8, 9, 10))

# Correct subsetting: The condition `data$a == 2 | data$a == 4` correctly selects rows where 'a' is 2 or 4.
correct_subset <- subset(data, data$a == 2 | data$a == 4)
print(correct_subset)

# Alternative using %in% for better readability
alternative_subset <- subset(data, data$a %in% c(2, 4))
print(alternative_subset)
```