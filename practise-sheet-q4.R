find_k = function(mu,sigma){
  integrand = function(x){
    return( (1/x) * exp(-(log(x) - mu)^2 / 2 * (sigma^2)) )
  }
  integral = integrate(integrand, 0, Inf)$value
  return( 1/integral )
}

k1 = find_k(-1,1)
k2 = find_k(-1,2)
k3 = find_k(2,2)
print(k1)

pdf_func = function(x,mu,sigma,k){
  return( (k/x) * exp(-(log(x) - mu)^2 / 2 * (sigma^2)) )
}

x_vals = seq(0,5,length.out = 1000)

plot(x_vals, pdf_func(x_vals,-1,1,k1), type = 'l', col = "blue", xlab = "x", ylab = "density",
     ylim = c(0,3))
lines(x_vals, pdf_func(x_vals,-1,2,k2), col = "red")
lines(x_vals, pdf_func(x_vals,2,2,k3), col = "green")


