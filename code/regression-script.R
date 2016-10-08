args = commandArgs(trailingOnly = TRUE)
advertising <- read.csv(file = args[1])
attach(advertising)
lm.fit = lm(Sales ~ TV, data = advertising)
save(lm.fit, file = 'data/regression.RData')
summary(lm.fit)


png('images/scatterplot-tv-sales.png')
plot(TV, Sales, col = 'red', pch = 20)
title(main = 'Advertising Scatterplot: Sales ~ TV')
abline(lm.fit, lwd = 3)
line <- lm.fit[[1]][2]*TV + lm.fit[[1]][1]
for (i in 1:200) {
  segments(TV[i], Sales[i],
           TV[i], line[i], lwd = 1)
}
dev.off()


pdf('images/scatterplot-tv-sales.pdf')
plot(TV, Sales, col = 'red', pch = 20)
title(main = 'Advertising Scatterplot: Sales ~ TV')
abline(lm.fit, lwd = 3)
line <- lm.fit[[1]][2]*TV + lm.fit[[1]][1]
for (i in 1:200) {
  segments(TV[i], Sales[i],
           TV[i], line[i], lwd = 1)
}
dev.off()
