# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Where Wellbeing Lives"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 0,
                  max = 13.85,
                  value = 6),
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
      hr(),
      helpText("Data from Reference_area column")
      
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      plotOutput("scatPlot")
    )
  )
)
