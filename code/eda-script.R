advertising <- read.csv(file = 'data/Advertising.csv')
attach(advertising)
summary(advertising)

png('images/histogram-tv.png')
hist(TV)
dev.off()

png('images/histogram-sales.png')
hist(Sales)
dev.off()

sink(file = 'data/eda-output.txt')
print('TV Summary Statistics')
summary(TV)
print('Sales Summary Statistics')
summary(Sales)
sink()
