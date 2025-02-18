
data_values <- c(200, 300, 400, 600, 1000)


min_value <- min(data_values)
max_value <- max(data_values)
min_max_normalized <- (data_values - min_value) / (max_value - min_value)


mean_value <- mean(data_values)
std_dev <- sd(data_values)
z_score_normalized <- (data_values - mean_value) / std_dev


print("Min-Max Normalization:")
print(round(min_max_normalized, 4))

print("Z-Score Normalization:")
print(round(z_score_normalized, 4))
