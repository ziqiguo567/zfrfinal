# Bank Marketing Campaign Analysis Makefile

# Final HTML report target
report/finalproject2.html: code/04_render_report.R \
                          report/finalproject2.Rmd \
                          output/table_one.rds \
                          output/histogram.png
	Rscript code/04_render_report.R

# Data cleaning
output/data_clean.rds: code/00_clean_data.R data/bank-full.csv
	Rscript code/00_clean_data.R

# Analysis and visualization
output/table_one.rds output/histogram.png: \
                     code/01_make_table1.R \
                     code/02_make_scatter.R \
                     output/data_clean.rds
	Rscript code/01_make_table1.R && \
	Rscript code/02_make_scatter.R

# Clean all generated files
.PHONY: clean
clean:
	rm -f output/*.rds && \
	rm -f output/*.png && \
	rm -f report/finalproject2.html

# Shortcut to build everything
.PHONY: all
all: report/finalproject2.html

.PHONY: install
install:
	Rscript -e "renv::restore()"