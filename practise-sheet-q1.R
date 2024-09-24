find_k = function(mu, beta){
  integrand = function(x){
    exp(-(x-mu)/beta)/(1+exp(-(x-mu)/beta))^2
  }
  integral = integrate(integrand,0,Inf)$value
  K = 1/integral
  return(K)
}

K1 = find_k(0,2)
K2 = find_k(0,4)
K3 = find_k(2,2)

# -- part a --

pdf_func = function(x,mu,beta,K){
  return(K * exp(-(x-mu)/beta) / (1+exp(-(x-mu)/beta))^2)
}

x_vals = seq(-10,10,length.out = 1000)

plot(x_vals, pdf_func(x_vals,0,2,K1), type = 'l', col = "blue",ylab = "Density", xlab = "x")
lines(x_vals, pdf_func(x_vals,0,4,K2), col = "green")
lines(x_vals, pdf_func(x_vals,2,2,K3), col = "red")

# -- part b --

calc_ex = function(mu, beta, n = 1){
  K = find_k(mu, beta)
  integrand = function(x){
    return((x ^ n) * pdf_func(x, mu, beta, K))
  }
  integral = integrate(integrand, 0, Inf)$value
  return(integral)
}

print(calc_ex(0,2))

calc_var = function(mu,beta){
  K = find_k(mu,beta)
  first_moment = calc_ex(mu,beta)
  second_moment = calc_ex(mu,beta,2)
  return(second_moment - first_moment^2)
}


print(calc_var(0,2))
