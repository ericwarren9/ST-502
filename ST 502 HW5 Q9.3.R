# Make graph for HW5 for power plot


# Get values of p and power -----------------------------------------------

# Get values of p
p <- seq(from = 0.001, to = 0.999, by = 0.001)

# Get the powers

powers <- data.frame()
temp <- data.frame()
for (i in p) {
  temp <- 1 - pnorm((6 - 10 * i) / sqrt(i * (1 - i))) + pnorm((4 - 10 * i) / sqrt(i * (1 - i)))
  powers <- rbind(powers, temp)
}

# Combine together
colnames(powers) <- "power"
p <- data.frame(p)
final_powers <- cbind(p, powers)

# Make plot
plot(final_powers$p, final_powers$power, main = "Approximating Power of our Function", xlab = "p", ylab = "Power")
