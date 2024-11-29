# Parameters
alpha <- 2
beta <- 1/3

# (a)(i) Density at X = 3
f_3 <- dgamma(3, shape = alpha, rate = beta)
cat("f(3) =", f_3, "\n")

# (a)(ii) P(X >= 1)
P_X_ge_1 <- 1 - pgamma(1, shape = alpha, rate = beta)
cat("P(X >= 1) =", P_X_ge_1, "\n")

# (b) Find c where P(X <= c) >= 0.70
c <- qgamma(0.70, shape = alpha, rate = beta)
cat("c for P(X <= c) >= 0.70 =", c, "\n")
