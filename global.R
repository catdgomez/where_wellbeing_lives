library(shiny)
library(tidyverse)
library(glue)
library(DT)
library(leaflet)
library(dplyr, warn.conflicts = FALSE)
library(ggplot2)
library(tidyr)
# install.packages("heatmaply")
library(heatmaply)
library(plotly)
library(reshape2)
library(reshape)


wellbeing <- read_csv("data/df.csv")
wellbeing_dropped <- read_csv("data/wellbeing_df_dropped.csv")


