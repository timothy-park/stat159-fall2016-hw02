args = commandArgs(trailingOnly = TRUE)
advertising <- read.csv(file = args[1])
attach(advertising)
summary(advertising)

png('images/histogram-tv.png')
hist(TV)
dev.off()

pdf('images/histogram-tv.pdf')
hist(TV)
dev.off()

png('images/histogram-sales.png')
hist(Sales)
dev.off()

pdf('images/histogram-sales.pdf')
hist(Sales)
dev.off()

sink(file = 'data/eda-output.txt')
print('TV Summary Statistics')
summary(TV)
print('Sales Summary Statistics')
summary(Sales)
sink()
