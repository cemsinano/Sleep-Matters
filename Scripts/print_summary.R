# print_summary: Function for categorical variables
#
#
print_summary <- function(data, i, form =c("html","rst","latex","markdown", "pandoc")){
  #
  # inputs: 
  #  data: dataframe
  #  i : column index 
  #  form = format of output table   
  #  prints summary table for a categorical variable 
  
  columns <- colnames(data)
  survey_len <-  length(data[[i]])
  summ <- data %>%  group_by(.[[i]]) %>% 
    summarize(frequency = n(), 
              percentage = paste(round(n()/survey_len*100), 
                                 "%") )
  colnames(summ)[1] = columns[i]
  return(knitr::kable(summ,
                      align = 'c',
                      format = form))
}