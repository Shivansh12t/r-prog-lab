data("iris")

#head(iris)

#str(iris)

plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main = "Comparing Sepal Length and Sepal Width",
  xlab = "Sepal Length",
  ylab = "Sepal Width",
  col = "blue",
  pch = 20
)

hist(
  iris$Petal.Width,
  main = "Distribution of Petal Width",
  breaks = 10,
  xlab = "Width",
  ylab = "Frequency"
)
