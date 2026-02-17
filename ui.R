# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Where Wellbeing Lives"),
  
  # Sidebar with a slider input for number of bins
  
  # Show a plot of the generated distribution
  mainPanel(
    tabsetPanel(
      tabPanel(
        "Scatterplot",
        sidebarLayout(
          sidebarPanel(
            
            
            
            selectInput("scatter_x",
                        "Select Variable to Display:",
                        choices = colnames(wellbeing_dropped)[5:17] 
            ),
            selectInput("scatter_y",
                        "Select Variable to Display:",
                        choices = colnames(wellbeing_dropped)[5:17] 
            ),
            selectInput("scatter_country", 
                        "Please select country:", 
                        choices = c(
                          "All", 
                          wellbeing_dropped %>% 
                            distinct(Reference_area) %>% 
                            pull() %>% 
                            sort()
                        )
            ), 
            helpText("Certain countries may not contain the data variables selected.")
          ),
          mainPanel(
            plotOutput("scatPlot"),
            hr(),
          )
        )
      ),
      
      
      
      tabPanel(
        "Histogram",
        sidebarLayout(
          sidebarPanel(
            
            uiOutput(
              "hist_bins"
            ),
            selectInput("hist_country",
                        "Please select a country:",
                        choices = c(
                          "All", 
                          wellbeing_dropped %>% 
                            distinct(Reference_area) %>% 
                            pull() %>% 
                            sort()
                        ) 
            ),
            selectInput("hist_variable",
                        "Select Variable to Display:",
                        choices = colnames(wellbeing_dropped)[5:17] 
            )
          ),
          mainPanel(
            plotOutput("distPlot")
          )
        )
      ),
      
      tabPanel(
        "Heatmap",
        sidebarLayout(
          sidebarPanel(
            

            selectInput("heat_country",
                        "Please select All or choose a specific country:",
                        choices = c(
                          "All", 
                          wellbeing_dropped %>% 
                            distinct(Reference_area) %>% 
                            pull() %>% 
                            sort()
                        ) 
            ),
            checkboxGroupInput("checkboxes", "Check 4 or more:", list(
              "Health Status: Fair" = "health_status_F", 
              "Health Status: Bad" = "health_status_B", 
              "Health Status: Good" = "health_status_G", 
              "Upper secondary education" = "upper_secondary_education", 
              "tertiary education" = "tertiary_education", 
              "below upper secondary education" = "below_upper_secondary_education",
              "motor vehicle theft" = "motor_vehicle_theft", 
              "mortality from transport accidents" = "mortality_from_transport_accidents", 
              "intentional homicides" = "intentional_homicides", 
              "Social Support" = "social_support",
              "lack of social support" = "lack_of_social_support",
              "feeling lonely" = "feeling_lonely",
              "life satisfaction" = "life_satisfaction",
              "satisfaction with personal relationships" = "satisfaction_w_relationships"
              ), selected = c("life_satisfaction", "feeling_lonely", "social_support", "intentional_homicides")
            
              ),
            
            selectInput("heat_one",
                        "Select your first variable:",
                        choices = colnames(wellbeing_dropped)[5:17] 
            ),
            selectInput("heat_two",
                        "Select the second variable:",
                        choices = colnames(wellbeing_dropped)[5:17] 
            ),
            selectInput("heat_three",
                        "Select the third variable:",
                        choices = colnames(wellbeing_dropped)[5:17] 
            ),
            selectInput("heat_four",
                        "Select the fourth variable:",
                        choices = colnames(wellbeing_dropped)[5:17] 
            ),
            helpText("Please selected 4 variables.")
            
          ),
          mainPanel(
            plotOutput("heatmapPlot")
          )
        )
      )
      
      
    )
  )
)


