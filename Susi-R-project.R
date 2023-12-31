library(rvest)
library(dplyr)
library(stringr)
library(robotstxt)
url <- 'https://www.forbes.com/lists/worlds-best-banks/?sh=26eb7d657ef6'
web <- read_html(url)
View(web)
hi=paths_allowed(url)
Bank_Name <- web %>% html_nodes('.name') %>% html_text()
View(Bank_Name)
city_name <- web %>% html_nodes('.city') %>% html_text()
View(city_name)
employees <- web %>% html_nodes('.employees') %>% html_text()
View(employees)
data_97= data.frame(Bank_Name,city_name,employees)
View(data_97)
write.csv(data_97,"Bank-list.csv")
