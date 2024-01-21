# Set the parameters
average_calls_per_day <- 25
days_in_year <- 365

# Simulate the data using a Poisson distribution
simulated_calls <- rpois(days_in_year, lambda = average_calls_per_day)

# Create a histogram
hist(simulated_calls, breaks = seq(0, max(simulated_calls) + 1, by = 1),
     col = "skyblue", xlab = "Number of Calls per Day", ylab = "Frequency",
     main = "Simulated Distribution of Calls in a Year")

# Add a vertical line at the average number of calls
abline(v = average_calls_per_day, col = "red", lty = 2)
