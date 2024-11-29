before <- c(145, 173, 158, 141, 167, 159, 154, 167, 145, 153)
after <- c(155, 167, 156, 149, 168, 162, 158, 169, 157, 161)

t.test(before, after,
       alternative = c("less"),
       mu = 0, paired = TRUE, var.equal = FALSE,
       conf.level = 0.95)