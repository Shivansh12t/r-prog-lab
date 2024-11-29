age = c(58, 69, 43, 39, 63, 52, 47, 31, 74, 36)
cholestrol = c(189, 235, 193, 177, 154, 191, 213, 165, 198, 181)

plot(age, cholestrol, main = "age vs cholestrol", xlab = "Age", ylab = "Cholestrol", pch = 16, col = "blue")

model = lm(cholestrol ~ age)

abline(model, col = "red", lw = 2)

summary(model)

predict(model, newdata = data.frame(age = 60))