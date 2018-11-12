# Question 1
library(tidyverse)
library(stringr)
library(fs)


get_name <- function(district, wave) {
  paste0("elections-poll-", str_to_lower(district),"-", wave, ".csv")
}
#which polls are you interested in, grab data, visualize


get_link <- function(district, wave) {
  paste0("https://raw.githubusercontent.com/TheUpshot/2018-live-poll-results/master/data/", 
  get_name(district, wave))
}

get_data <- function(district, wave) {
  link <- get_link(district, wave)
  name <- get_name(district, wave)
  download.file(link, name, quiet = TRUE)
  
  read_csv(name)
}



