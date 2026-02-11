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
      selectInput("lonely", "Please select country:", 
                  choices = wellbeing$Reference_area
      )
      
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      plotOutput("scatPlot")
    )
  )
)
