# R Subsetting Bug: Logical Operator Precedence

This repository demonstrates a common, yet subtle, error in R related to logical operator precedence when subsetting data frames. The bug arises from an incorrect use of the logical OR operator (`|`), leading to unintended row selection.

## Bug Description
The primary issue is the misinterpretation of the logical OR operator in a subsetting condition. The condition `data$a == 2 | 4` is not interpreted as expected. Instead of checking if `data$a` is equal to 2 OR 4, R evaluates it as `(data$a == 2) | 4`, where 4 is treated as a logical TRUE. This causes rows with `data$a` equal to any value to be selected.

## Solution
The solution involves explicitly specifying the condition for each value (2 or 4). The corrected condition `data$a == 2 | data$a == 4` accurately selects rows where `data$a` is either 2 or 4.

## Files
* `bug.r`: Contains the code that demonstrates the buggy behavior.
* `bugSolution.r`: Provides the corrected code that correctly subsets the data frame.