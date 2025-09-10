# Name: Irwin Ortega
# Course: MIS446
# Module: 6

# Step 2: Organize exam scores into an R data frame and calculate the point estimate of the difference.

# Define the scores for Exam 1 and Exam 2 as R vectors.
exam1_scores <- c(81, 89, 83, 81, 77, 82, 79, 88, 80, 81, 79, 91)
exam2_scores <- c(78, 77, 69, 81, 78, 74, 76, 79, 83, 76, 79, 74)

# Create an R data frame to organize the scores.
# This makes it easy to manage paired observations.
exam_data <- data.frame(Exam1 = exam1_scores, Exam2 = exam2_scores)

# Calculate the difference for each student (Exam1 - Exam2).
# This is the 'd' variable in paired t-test formulas.
differences <- exam_data$Exam1 - exam_data$Exam2

# Calculate the point estimate of the difference between the two population means.
# For dependent samples, this is simply the mean of the individual differences.
point_estimate_diff <- mean(differences)
cat("Point Estimate of the Difference (Exam1 - Exam2):\n")
print(point_estimate_diff)


# Step 3: Print current date and time and username (First Instance)
cat("\n--- System Information (First Instance) ---\n")
cat("Current Date and Time:\n")
print(Sys.time())

# Assign a specific username to be printed.
username_val <- "earthwind"

cat("Username:\n")
print(username_val)


# Step 4: Calculate the 95% confidence interval estimate of the difference between the two population means.

# Perform a paired t-test to get the confidence interval.
# 'x' and 'y' are the two samples (Exam1 and Exam2 scores).
# 'paired = TRUE' is crucial here because the samples come from the same students,
# meaning they are dependent (matched) samples.
# 'conf.level = 0.95' specifies a 95% confidence interval.
ci_result <- t.test(exam1_scores, exam2_scores, paired = TRUE, conf.level = 0.95)

# Print the full results of the t-test, which include the confidence interval.
cat("\n--- 95% Confidence Interval for the Difference (Paired t-test) ---\n")
print(ci_result)


# Step 5: Print current date and time and username (Second Instance)
cat("\n--- System Information (Second Instance) ---\n")
cat("Current Date and Time:\n")
print(Sys.time())

# Re-use the previously defined username variable.
cat("Username:\n")
print(username_val)
