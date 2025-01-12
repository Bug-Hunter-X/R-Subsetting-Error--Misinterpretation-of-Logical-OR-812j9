```r
# This code attempts to subset a data frame based on a condition,
# but it produces unexpected results due to a subtle error in the subsetting logic.

data <- data.frame(a = c(1, 2, 3, 4, 5), b = c(6, 7, 8, 9, 10))

# Incorrect subsetting: The condition `data$a == 2 | 4` is evaluated as `(data$a == 2) | 4`. 
# 4 is treated as TRUE, leading to unexpected rows being included.
wrong_subset <- subset(data, data$a == 2 | 4)
print(wrong_subset)

# Correct subsetting: The condition should be `data$a == 2 | data$a == 4` to correctly select rows where 'a' is 2 or 4.
correct_subset <- subset(data, data$a == 2 | data$a == 4)
print(correct_subset)
```