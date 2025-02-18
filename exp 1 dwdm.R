lower_bounds <- c(1, 5, 15, 20, 50, 80)
upper_bounds <- c(5, 15, 20, 50, 80, 110)  
frequencies <- c(200, 450, 300, 1500, 700, 44) 
cumulative_frequencies <- cumsum(frequencies)
N <- sum(frequencies)
N_half <- N / 2 
median_class_index <- which(cumulative_frequencies >= N_half)[1]
L <- lower_bounds[median_class_index]
CF <- ifelse(median_class_index == 1, 0, cumulative_frequencies[median_class_index - 1])
f <- frequencies[median_class_index]  h <- upper_bounds[median_class_index] - lower_bounds[median_class_index]  
median_value <- L + ((N_half - CF) / f) * h
print(paste("Approximate Median:", round(median_value, 2)))
