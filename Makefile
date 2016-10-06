advertising_url = "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

.PHONY: all data clean

all: eda-output.txt regression.RData report.pdf

# how to use the RData and png in makefile? regression.RData scatterplot-tv-sales.png
report.pdf: report/report.Rmd
	pandoc report/report.Rmd -s -o report/report.pdf


# need to use advertising.csv in the makefile?
regression.RData: code/regression-script.R
	R CMD BATCH code/regression-script.R data/regression.RData

# need to use advertising.csv in the makefile?
# how to get rid of commands in eda-output.txt?
eda-output.txt: code/eda-script.R
	R CMD BATCH code/eda-script.R data/eda-output.txt

data: 
	Rscript -e 'download.file(url = $(advertising_url), 
		destfile = "data/Advertising.csv")'

# do we also clean eda-output.txt and regression.RData
clean: 
	rm -f report/report.pdf