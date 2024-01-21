# Set the parameters
n <- 25  # Number of trials (accounts)
p <- 0.75  # Probability of success (account paying on time)

# Generate the binomial distribution
x <- 0:n  # Possible number of accounts paying on time
probabilities <- dbinom(x, size = n, prob = p)

# Plot the distribution
barplot(probabilities, names.arg = x, xlab = "Number of Accounts Paying on Time", ylab = "Probability", main = "Binomial Distribution of Accounts Paying on Time")



#decrasing the sample size

n <-  10
p <- 0.75

x <- 0:n
probabilities <- dbinom(x, size = n, prob = p)

# Plot the distribution
barplot(probabilities, names.arg = x, xlab = "Number of Accounts Paying on Time", ylab = "Probability", main = "Binomial Distribution of Accounts Paying on Time")

#increasing the sample size

n <- 30
p <- 0.75

x <- 0:n
probabilities <- dbinom(x, size = n, prob = p)

# Plot the distribution
barplot(probabilities, names.arg = x, xlab = "Number of Accounts Paying on Time", ylab = "Probability", main = "Binomial Distribution of Accounts Paying on Time")


