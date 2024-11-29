lambda = 1/2
# one
print(dexp(3, rate = lambda))

#two
x = seq(0,5, by = 0.01)
pdf = dexp(x, rate = lambda)

plot(x,pdf,type = "l", col = "blue", xlab = "x", ylab = "f(x)", ylim = c(0,1))

#three
print(pexp(3, rate = lambda))

#four
cdf = pexp(x, rate = lambda)
lines(x,cdf, type = "l", col = "red", lw = 1)
