m = 2
v = sqrt(3)

# -- part a --
p_a = 1 - pnorm(3,m,v)
print(p_a)

# -- part b --
p_b = pnorm(9,m,v) - pnorm(1,m,v)
print(p_b)

# -- part c --
x_val_for_q = qnorm(0.75,m,v)
print(x_val_for_q)

# -- part d --
# it will be a normal distribution with mean = 0 and var = 3/3 = 1; it will be a standard normal

# -- part e --
X = rnorm(1000,m,v)

hist(X)
Y = ((X - m) / sqrt(3))
hist(Y)
print(mean(Y))
print(var(Y))


