function(input, output, session) {
  
 
  output$hist_bins2 <- renderUI({
    sliderInput("bins2",
                "Number of bins for Faceted Histogram:",
                min = 0,
                max = 50,
                value = 10)
  })
  
  
  output$distPlot2 <- renderPlot({
    
    if(input$hist_variable2 == "OBS_VALUE_PHS"){
      
      if(input$hist_country2 != "All"){
        plot_data <- phs_grouped |> 
          filter(Reference_area == input$hist_country2)
        title <- glue("% of the pop who self-identified as having the respective levels of health for {input$hist_country2}")
         q
        ggplot(plot_data, aes(x = TIME_PERIOD, y = .data[[input$hist_variable2]], group = Health_status, color = Health_status)) +
          geom_line() +
          labs(x = "Time Period", y="% of the pop with respective levels of health", title = title)
        
      } else if(input$hist_country2 == 'All'){
        plot_data <- phs_grouped
        title <- glue("Distribution of Perceived Health Status")
        
        ggplot(plot_data, aes(x=.data[[input$hist_variable2]])) +
          geom_histogram(color="white", fill="salmon", bins = input$bins2) +
          facet_grid(Health_status ~ .) +
          labs(x="Observed Values for Perceived Health Status", title = title)
      }
  
      
    } else if(input$hist_variable2 == "OBS_VALUE_EL"){
      
      if(input$hist_country2 != "All"){
        plot_data <- el_grouped |> 
          filter(Reference_area == input$hist_country2)
        title <- glue("% of the pop that has attained that level of education for {input$hist_country2}")
        
        ggplot(plot_data, aes(x = TIME_PERIOD, y = .data[[input$hist_variable2]], group = Edu_attainment_lvl, color = Edu_attainment_lvl)) +
          geom_line() +
          labs(x = "Time Period", y="% of the pop with respective levels of education", title = title)
        
      } else if(input$hist_country2 == 'All'){
        plot_data <- el_grouped
        title <- glue("Distribution of Educational Attainment Level")
        
        ggplot(plot_data, aes(x=.data[[input$hist_variable2]])) +
          geom_histogram(color="white", fill="salmon", bins = input$bins2) +
          facet_grid(Edu_attainment_lvl ~ .) +
          labs(x="Observed Values for Educational Attainment Level", title = title)
      }
      
      
    } else if(input$hist_variable2 == "OBS_VALUE_SAFETY"){
      
      if(input$hist_country2 != "All"){
        plot_data <- safety_grouped |> 
          filter(Reference_area == input$hist_country2)
        title <- glue("Number of incidents per 100,000 people for {input$hist_country2}")
        
        ggplot(plot_data, aes(x = TIME_PERIOD, y = .data[[input$hist_variable2]], group = Measure_safety, color = Measure_safety)) +
          geom_line() +
          labs(x = "Time Period", y="incidents per 100,000 people", title = title)
        
      } else if(input$hist_country2 == 'All'){
        plot_data <- safety_grouped
        title <- glue("Distribution of Crime/Safety Incidents per 100,000 People")
        
        ggplot(plot_data, aes(x=.data[[input$hist_variable2]])) +
          geom_histogram(color="white", fill="salmon", bins = input$bins2) +
          facet_grid(Measure_safety ~ .) +
          labs(x="Observed Values for Crime or Safety Measures", title = title)
      }
      
      
    } else if(input$hist_variable2 == "OBS_VALUE_SOCIAL"){
      
      if(input$hist_country2 != "All"){
        plot_data <- social_grouped |> 
          filter(Reference_area == input$hist_country2)
        title <- glue("% of the pop having or lacking social support for {input$hist_country2}")
        
        ggplot(plot_data, aes(x = TIME_PERIOD, y = .data[[input$hist_variable2]], group = Measure_social, color = Measure_social)) +
          geom_line() +
          labs(x = "Time Period", y="% of the population", title = title)
        
      } else if(input$hist_country2 == 'All'){
        plot_data <- social_grouped
        title <- glue("Distribution of Social Support or Lack of Social Support")
        
        ggplot(plot_data, aes(x=.data[[input$hist_variable2]])) +
          geom_histogram(color="white", fill="salmon", bins = input$bins2) +
          facet_grid(Measure_social ~ .) +
          labs(x="Observed Values for Social Connection", title = title)
      }
      
      
    } else if(input$hist_variable2 == "OBS_VALUE_SAT"){
      
      if(input$hist_country2 != "All"){
        plot_data <- sat_life_grouped |> 
          filter(Reference_area == input$hist_country2)
        title <- glue("Mean Values (0-10 scale) for {input$hist_country2}")
        
        ggplot(plot_data, aes(x = TIME_PERIOD, y = .data[[input$hist_variable2]], group = Measure_sat, color = Measure_sat)) +
          geom_line() +
          labs(x = "Time Period", y="Mean Values on a Scale from 0 to 10", title = title)
        
      } else if(input$hist_country2 == 'All'){
        plot_data <- sat_life_grouped
        title <- glue("Distribution of Satisfaction with Life and Relationships")
        
        ggplot(plot_data, aes(x=.data[[input$hist_variable2]])) +
          geom_histogram(color="white", fill="salmon", bins = input$bins2) +
          facet_grid(Measure_sat ~ .) +
          labs(x="Observed Values for Satisfaction with Life and Relationships", title = title)
      }  
      
    }
    
  })
  
  

  
  
  output$scatPlot1 <- renderPlot({
    
    
    plot_variables <- wellbeing_dropped
    
    if(input$scatter_country != "All"){
      plot_variables <- wellbeing_dropped %>% 
        filter(Reference_area == input$scatter_country)
      title <- glue("{input$scatter_x} and {input$scatter_y} for {input$scatter_country}")
    } else if(input$scatter_country == "All"){
      plot_variables <- wellbeing_dropped
      title <- glue("{input$scatter_x} and {input$scatter_y} for All Countries")
    }
    
    res <- cor.test(plot_variables[input$scatter_x] %>% 
                      pull(), 
                    plot_variables[input$scatter_y] %>% 
                      pull(), 
                    method = "pearson")
    
    ggplot(
      plot_variables, aes(x=.data[[input$scatter_x]], y = .data[[input$scatter_y]])) + 
      geom_point() +
      labs(title = title) +
      geom_smooth(method = lm, se = TRUE) +
      theme(axis.text.x = element_text(angle = 0, hjust = 1, size = 10)) +
      theme(axis.text.y = element_text(angle = 0, hjust = 1, size = 10)) +
      annotate(
        "text", label = glue("Pvalue: {round(res$p.value, digits = 3)} and Correlation Coefficient: {round(res$estimate, digits = 3)}"),
        x = -Inf, y = -Inf, hjust = 0, vjust = 0, size = 8, colour = "blue"
      )
    
  })
  
  
  output$scatPlot2 <- renderPlot({
    
    
    
    plot_variables <- wellbeing_dropped
    
    if(input$scatter_country2 != "All"){
      plot_variables <- wellbeing_dropped %>% 
        filter(Reference_area == input$scatter_country2)
      title <- glue("{input$scatter_x2} and {input$scatter_y2} for {input$scatter_country2}")
    } else if(input$scatter_country2 == "All"){
      plot_variables <- wellbeing_dropped
      title <- glue("{input$scatter_x2} and {input$scatter_y2} for All Countries")
    }
    
    res <- cor.test(plot_variables[input$scatter_x2] %>% 
                      pull(), 
                    plot_variables[input$scatter_y2] %>% 
                      pull(), 
                    method = "pearson") 
    
    ggplot(
      plot_variables, aes(x=.data[[input$scatter_x2]], y = .data[[input$scatter_y2]])) + 
      geom_point() +
      labs(title = title) +
      geom_smooth(method = lm, se = TRUE) +
      theme(axis.text.x = element_text(angle = 0, hjust = 1, size = 10)) +
      theme(axis.text.y = element_text(angle = 0, hjust = 1, size = 10)) +
      annotate(
        "text", label = glue("Pvalue: {round(res$p.value, digits = 3)} and Correlation Coefficient: {round(res$estimate, digits = 3)}"),
        x = -Inf, y = -Inf, hjust = 0, vjust = 0, size = 8, colour = "blue"
      ) 
    
  })
  
  
  output$heatmapPlot <- renderPlot(width = "auto",
                                   height = "auto",
                                   {
    
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
    
    data <- cor(the_values)
    data_melted <- melt(data)
    print(data_melted)
    ggplot(data_melted, aes(x = X1, y = X2, fill = value)) +
      geom_tile() +
      labs(title = "Heatmap demonstrating the relationship between chosen variables",
           x = "variables selected", 
           y = "Variables selected") +
      scale_fill_gradient2(low = "red", high = "blue",
                           limit = c(-1,1), name="Correlation") +
      geom_text(aes(X2, X1, label = round(value, digits = 3)), size = 3) +
      theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 10)) +
      theme(axis.text.y = element_text(angle = 45, hjust = 1, size = 10))

    
  })
  
    
  output$tableTable <- renderDataTable({
    
    if(input$table_country != "All"){
      selected_data <- wellbeing_dropped |> 
        filter(Reference_area == input$table_country) %>% 
        select(-"...1")
    } else if(input$table_country == 'All'){
      selected_data <- wellbeing_dropped %>% 
        select(-"...1")
    }
    
    selected_data
    
  })
  
  
  output$confintPlot <- renderPlot({
    
    est <- map_dbl(
      
      list(wellbeing_dropped$feeling_lonely, wellbeing_dropped$social_support, wellbeing_dropped$intentional_homicides, wellbeing_dropped$health_status_F, wellbeing_dropped$health_status_B, wellbeing_dropped$health_status_G, wellbeing_dropped$upper_secondary_education, wellbeing_dropped$tertiary_education, wellbeing_dropped$below_upper_secondary_education, wellbeing_dropped$motor_vehicle_theft, wellbeing_dropped$mortality_from_transport_accidents, wellbeing_dropped$lack_of_social_support, wellbeing_dropped$satisfaction_w_relationships),
      \(x) round(cor.test(wellbeing_dropped$life_satisfaction, x, method = "pearson")$estimate, 4)
      
    )

    lower <- map_dbl(
      
      list(wellbeing_dropped$feeling_lonely, wellbeing_dropped$social_support, wellbeing_dropped$intentional_homicides, wellbeing_dropped$health_status_F, wellbeing_dropped$health_status_B, wellbeing_dropped$health_status_G, wellbeing_dropped$upper_secondary_education, wellbeing_dropped$tertiary_education, wellbeing_dropped$below_upper_secondary_education, wellbeing_dropped$motor_vehicle_theft, wellbeing_dropped$mortality_from_transport_accidents, wellbeing_dropped$lack_of_social_support, wellbeing_dropped$satisfaction_w_relationships),
      \(x) round(cor.test(wellbeing_dropped$life_satisfaction, x, method = "pearson")$conf.int[1], 4)
      
    )
        
    upper <- map_dbl(
      
      list(wellbeing_dropped$feeling_lonely, wellbeing_dropped$social_support, wellbeing_dropped$intentional_homicides, wellbeing_dropped$health_status_F, wellbeing_dropped$health_status_B, wellbeing_dropped$health_status_G, wellbeing_dropped$upper_secondary_education, wellbeing_dropped$tertiary_education, wellbeing_dropped$below_upper_secondary_education, wellbeing_dropped$motor_vehicle_theft, wellbeing_dropped$mortality_from_transport_accidents, wellbeing_dropped$lack_of_social_support, wellbeing_dropped$satisfaction_w_relationships),
      
      \(x) round(cor.test(wellbeing_dropped$life_satisfaction, x, method = "pearson")$conf.int[2], 4)
      
    )    
    
    tibble(est, lower, upper, variable = c("feeling_lonely", "social_support", "intentional_homicides", "health_status_F", "health_status_B", "health_status_G", "upper_secondary_education", "tertiary_education", "below_upper_secondary_education", "motor_vehicle_theft", "mortality_from_transport_accidents", "lack_of_social_support","satisfaction_w_relationships")) %>%
      ggplot(aes(fct_relevel(variable, c("social_support", "lack_of_social_support", "health_status_G", "health_status_F", "health_status_B", "below_upper_secondary_education", "upper_secondary_education", "tertiary_education", "intentional_homicides", "motor_vehicle_theft", "mortality_from_transport_accidents", "satisfaction_w_relationships", "feeling_lonely")), est)) +
      geom_point() +
      geom_errorbar(aes(ymin=lower, ymax=upper)) +
      labs(title = "All Variables Correlation with Life Satisfaction",
           x = "Variables", 
           y = "correlation") +
      theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 10))
    
    
    
  })
  
  
  
}

