# Driver script
# SleepMatters Team, April 2018
# Completes analysis of SleepMatters Survey top to bottom (from raw data to rendering report)
#
# usage: make all

# run all analysis
all: Report/Final_Report.md

## save and clean the data:

Results/processed_data.csv: Scripts/SaveSurvey.R
	Rscript Scripts/SaveSurvey.R "https://docs.google.com/spreadsheets/d/e/2PACX-1vSdasRKOu6M7gSoFhpf1RUkJqc_rb7CqwnduMGeYKHMMX5THvJd7khLRpU0VKi99kHgsTvD5qL5q2_I/pubhtml"

# make report for the project:
Report/Final_Report.md: Results/processed_data.csv
	Rscript -e 'ezknitr::ezknit("Scripts/Final_Report.Rmd", out_dir = "Report/")'

# clean up intermediate files
clean:
	rm -f Data/row_data
	rm -f Results/processed_data
	rm -f Report/Final_Report.md
	rm -f Report/Final_Report.html
