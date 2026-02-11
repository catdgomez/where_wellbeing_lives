library(shiny)
library(tidyverse)
library(glue)
library(DT)
# install.packages("RSQLite")
library(RSQLite)


wellbeing <- read_csv("data/df.csv")
view(wellbeing)

# movies <- read_csv("../data/penguins.csv")
# 
# filename <- "movies.db"
# sqlite.driver <- dbDriver("SQLite")
# db <- dbConnect(sqlite.driver,
#                 dbname = filename)
# 
# # Some operations
# dbListTables(db)
# mytable <- dbReadTable(db,"movies")