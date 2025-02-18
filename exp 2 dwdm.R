
age_values <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 
                30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)


mean_value <- mean(age_values)  # Mean
median_value <- median(age_values)  # Median


mode_value <- names(which.max(table(age_values)))


mode_counts <- table(age_values)
modal_values <- as.numeric(names(mode_counts[mode_counts == max(mode_counts)])) 
modality <- length(modal_values)  

midrange <- (min(age_values) + max(age_values)) / 2

Q1 <- quantile(age_values, 0.25)
Q3 <- quantile(age_values, 0.75)

print(paste("Mean:", round(mean_value, 2)))
print(paste("Median:", median_value))
print(paste("Mode(s):", paste(modal_values, collapse=", ")))
print(paste("Modality:", ifelse(modality == 1, "Unimodal", ifelse(modality == 2, "Bimodal", "Multimodal"))))
print(paste("Midrange:", midrange))
print(paste("Q1 (First Quartile):", Q1))
print(paste("Q3 (Third Quartile):", Q3))
