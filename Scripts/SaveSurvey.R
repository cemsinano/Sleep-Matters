#! /usr/bin/env Rscript

## SaveSurvey:
## Author: SleepMatters Team
## date: "4/21/2018"

# This script takes data from Google Sheets as an argument

# Dependencies:
# tidyverse, googlesheets

# Input: arg[1]: the source for Survey data as input (csv file or link to csv)


# SaveSurvey: Take csv files,
#             Save raw_data,
#             Change column names,
#             Delete timestamp and empty X2 columns,
#             Save processed data.
#
# Output: processed_data.csv under Data folder
library(tidyverse)
library(googlesheets)

main <- function(){

  args = commandArgs(trailingOnly=TRUE)

  survey_url <- args[1]

  survey_url <- "https://docs.google.com/spreadsheets/d/18rdbGurCSLW1oF2SGub-TrdM4yMb5ovBP6Mibx3WYMY/edit?usp=sharing"

  spreadsheet <- survey_url %>%
    gs_url()
  
  row_data <- spreadsheet %>%
    gs_read(ws = "Form Responses 1")

  ## Write row data:
  write_csv(row_data,path = "./Data/raw_data.csv")

  # drop Timestamp and empty column:
  row_data["Timestamp"] <- NULL
  row_data["X2"] <- NULL

  columns <-  c("grade","sleep","commute_time","accommodation_type",
                "meal","going_out","exercise","smoking", "drinking", "stress")

  # assign row_data to a new data variable :
  data <- row_data

  # To rename columns:
  colnames(data) <- columns

  write_csv(data,path = "./Results/processed_data.csv")

}

main()
