advertising <- read.csv(file = 'data/Advertising.csv')
attach(advertising)
lm.fit = lm(Sales ~ TV, data = advertising)
save(lm.fit, file = 'data/regression.RData')
summary(lm.fit)

png('images/scatterplot-tv-sales.png')
plot(TV, Sales, col = 'red', pch = 20)
title(main = 'Advertising Scatterplot: Sales ~ TV')
abline(lm.fit, lwd = 2)
dev.off()


pdf('images/scatterplot-tv-sales.pdf')
plot(TV, Sales, col = 'red', pch = 20)
title(main = 'Advertising Scatterplot: Sales ~ TV')
abline(lm.fit, lwd = 2)
dev.off()