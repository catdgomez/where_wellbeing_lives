# Define server logic required to draw a histogram
function(input, output, session) {
  
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x <- wellbeing$`Feeling lonely`
    # print(x)
    bins <- seq(min(x, na.rm = TRUE), max(x, na.rm = TRUE), length.out = input$bins + 1)
    # bins <- seq(0, 13.85, length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white',
         xlab = 'DF what what (in measure)',
         main = 'DF What what')
    
  })
  
  output$scatPlot <- renderPlot({
    
    plot_variables <- wellbeing
    
    if(input$country != "All"){
      plot_variables <- wellbeing %>% 
        filter(Reference_area == input$country)
      title <- glue("{input$scatter_x} and {input$scatter_y} for {input$country}")
    } else if(input$country == "All"){
      plot_variables <- wellbeing
      title <- glue("{input$scatter_x}")
    }
    ggplot(
      plot_variables, aes(x=.data[[input$scatter_x]], y = .data[[input$scatter_y]])) + 
      geom_point() +
      labs(title = title)
    
  })
  
}

