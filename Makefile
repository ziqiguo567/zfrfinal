all: report/finalproject2.html

report/finalproject2.html: report/finalproject2.Rmd data/bank-full.csv
	Rscript -e "rmarkdown::render('report/finalproject2.Rmd')"
