#this script will scrape league tables from the top 5 football leagues courtesy of 
#this script requires the following packages: rvest, xml2
library(tidyverse)

library(rvest)

english_premier_league <- read_html("https://fbref.com/en/comps/9/Premier-League-Stats")
la_liga <- read_html("https://fbref.com/en/comps/12/La-Liga-Stats")
bundesliga <- read_html("https://fbref.com/en/comps/20/Bundesliga-Stats")
serie_A <- read_html("https://fbref.com/en/comps/11/Serie-A-Stats")
ligue_1 <- read_html("https://fbref.com/en/comps/13/Ligue-1-Stats")

epl_table <- english_premier_league %>% #create data frame
  html_nodes("#results32321_overall") %>%
  html_table()

la_liga_table <- la_liga %>%
  html_node("#results32391_overall") %>%
  html_table()

bundesliga_table <- bundesliga %>%
  html_node("#results32481_overall") %>%
  html_table()

serie_A_table <- serie_A %>%
  html_node("#results32601_overall") %>%
  html_table()

ligue_1_table <- ligue_1 %>%
  html_node("#results32431_overall") %>%
  html_table()

