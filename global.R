library(shiny)
library(tidyverse)
library(glue)
library(DT)
library(leaflet)
# install.packages("RSQLite")
library(RSQLite)
library(dplyr, warn.conflicts = FALSE)
library(dplyr)
library(ggplot2)
library(tidyr)


wellbeing <- read_csv("data/df.csv")


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