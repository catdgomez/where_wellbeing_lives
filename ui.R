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
        plotOutput("scatPlot"),
        hr(),
        selectInput("scatter_x",
                    "Select Variable to Display:",
                    choices = colnames(wellbeing)[5:17] 
        ),
        selectInput("scatter_y",
                    "Select Variable to Display:",
                    choices = colnames(wellbeing)[5:17] 
        ),
        selectInput("country", 
                    "Please select country:", 
                    choices = c(
                      "All", 
                      wellbeing %>% 
                        distinct(Reference_area) %>% 
                        pull() %>% 
                        sort()
                    )
        ), 
        helpText("Data from Reference_area column")
      ),
      
      tabPanel(
        "Histogram",
        plotOutput("distPlot"),
        uiOutput(
          "hist_bins",
        ),
        selectInput("hist_country",
                    "Please select a country:",
                    choices = c(
                      "All", 
                      wellbeing %>% 
                        distinct(Reference_area) %>% 
                        pull() %>% 
                        sort()
                    ) 
        ),
        selectInput("hist_variable",
                    "Select Variable to Display:",
                    choices = colnames(wellbeing)[5:17] 
        ),
        
      ),
      
      
    )
  )
)

