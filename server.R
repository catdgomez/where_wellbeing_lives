# Define server logic required to draw a histogram
function(input, output, session) {
  
  
  
  output$distPlot <- renderPlot({
    
    if(input$hist_country != "All"){
      plot_data <- wellbeing_dropped |> 
        filter(Reference_area == input$hist_country)
      title <- glue("Distribution of {input$hist_variable} for {input$hist_country}")
    } else if(input$hist_country == 'All'){
      plot_data <- wellbeing_dropped
      title <- glue("Distribution of {input$hist_variable}")
    }
    
    plot_data |> 
      ggplot(aes(x = .data[[input$hist_variable]])) +
      geom_histogram(color = "white", fill = "salmon", bins = input$bins) + 
      labs(title = title)
    
    
    
  })

  output$hist_bins <- renderUI({
    sliderInput("bins",
                "Number of bins:",
                min = 0,
                max = 50,
                value = 25)
  })
    
  output$scatPlot <- renderPlot({
    
    plot_variables <- wellbeing_dropped
    
    if(input$scatter_country != "All"){
      plot_variables <- wellbeing_dropped %>% 
        filter(Reference_area == input$scatter_country)
      title <- glue("{input$scatter_x} and {input$scatter_y} for {input$scatter_country}")
    } else if(input$scatter_country == "All"){
      plot_variables <- wellbeing_dropped
      title <- glue("{input$scatter_x}")
    }
    ggplot(
      plot_variables, aes(x=.data[[input$scatter_x]], y = .data[[input$scatter_y]])) + 
      geom_point() +
      labs(title = title) +
      geom_smooth(method = lm, se = TRUE)
    
    
  })
  
  
  output$heatmapPlot <- renderPlot({
    
    plot_heat <- wellbeing_dropped
    
    if(input$heat_country != "All"){
      plot_heat <- wellbeing_dropped %>% 
        filter(Reference_area == input$heat_country)
      title <- "Relationship between Variables selected."
    } else if(input$heat_country == "All"){
      plot_heat <- wellbeing_dropped
      title <- "Relationship between Variables selected."
    }
    
    the_values <- plot_heat[, input$checkboxes]
    
    print(the_values)
    data <- cor(the_values)
    data_melted <- melt(data)
    print(data_melted)
    ggplot(data_melted, aes(x = X1, y = X2, fill = value)) +
      geom_tile() +
      labs(title = "Heatmap demonstrating the relationship between chosen variables",
           x = "variables selected",
           y = "Variables selected") +
      scale_fill_gradient2(low = "yellow", high = "red",
                           limit = c(-1,1), name="Correlation") +
      geom_text(aes(X2, X1, label = round(value, digits = 3)), size = 3) +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
    
    
  })
  
}

