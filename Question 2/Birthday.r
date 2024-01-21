# Function to simulate the birthday problem
simulate_birthday_problem <- function(n) {
  # Initialize variables
  birthdays <- integer(n)
  match_found <- FALSE
  iterations <- 0
  
  # Simulate classmates entering the classroom
  while (!match_found) {
    iterations <- iterations + 1
    
    # Generate a new birthday
    new_birthday <- sample(1:365, 1)
    
    # Check for a matching birthday
    if (new_birthday %in% birthdays) {
      match_found <- TRUE
    } else {
      # If no match, add the new birthday to the list
      birthdays <- c(birthdays, new_birthday)
    }
  }
  
  return(iterations)
}

# Set parameters
num_simulations <- 1000  # Number of simulations

# Simulate the birthday problem multiple times
results <- sapply(1:num_simulations, function(i) simulate_birthday_problem(30))

# Plot the results
hist(results, breaks = seq(0, max(results) + 1, by = 1),
     col = "skyblue", xlab = "Number of Classmates Before a Match",
     ylab = "Frequency", main = "Simulated Birthday Problem")

# Add labels and grid
abline(v = mean(results), col = "red", lty = 2)
text(mean(results) + 5, 50, "Mean", col = "red")

# Add legend
legend("topright", legend = paste("Average:", round(mean(results), 2)), col = "red", lty = 2)
