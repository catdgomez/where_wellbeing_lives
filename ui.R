# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Where Wellbeing Lives"),
  
  # Sidebar with a slider input for number of bins
  
  # Show a plot of the generated distribution
  mainPanel(
    
    tabsetPanel(
      
      tabPanel(
        
        "Introduction",
        tags$br(),
        tags$h4("Hi! I'm Cat D. Gomez."),
        tags$h5("This app was completed as a part of a data science bootcamp at Nashville Software School."),
        tags$h5(""),
        tags$h5("Here we will explore:"),
        tags$h4("Where does wellbeing actually live at the national level?"),

        tags$h5("Is it rooted in Safety?"),
        tags$h5("In health?"),
        tags$h5("In connection?"),
        tags$h5("Or is it rooted in something less visible, like belonging?"),
        tags$br(),
        tags$h6("I invite you, as I have, to explore those relationships, and others, across countries using publicly available international survey data from the following site:"),
        tags$a(href = "https://data-explorer.oecd.org/", "Organisation for Economic Co-operation and Development Data Explorer")
        
      ),
      
      tabPanel(
        
        "Data",
        tags$br(),
        tags$h4("Where does the data comes from?"),
        tags$h5("The datasets used here were compiled using several different sources. "),
        tags$a(href = "https://www.oecd.org/content/dam/oecd/en/topics/policy-sub-issues/measuring-well-being-and-progress/oecd-well-being-database-definitions.pdf", "The OECD Data sets Definitions and metadata are provided here."),
        tags$h5("Perceived Health Status: Bad, Fair, and Good:"),
        tags$h6("5.2 Perceived health: Indicator and unit of measurement: Percentage of the population 16 years or over reporting “good” or “very good” health Type of indicator: Country average, deprivation, and horizontal inequality (data by sex, education and age [young=15-24 years, middle-aged=25-64 years and old=65+ years]) Definition: Perceived health refers to people’s overall self-reported health status. Averages in perceived health refer to the percentage of adults reporting “good” or “very good” health. Data are based on general household surveys or on more detailed health interviews. The indicator is based on questions such as: “How is your health in general?”, with answers usually classified as “very good”, “good”, “not very good” and “poor” – although in some non-European countries (Australia, Canada, Chile, Israel, New Zealand, the United States) different response scales are used, which may lead to an upward bias in the estimates. In the OECD Health Status database, the response categories from different surveys are rescored to fit into three broad categories of “good/very good” (all positive response categories), “fair” (neither good nor bad), “bad/very bad” (all negative response categories). Respondents are generally 16 years or over, though the specific age range varies across countries. Data are based on general household surveys or on more detailed health interviews. Deprivation in perceived health is measured as the percentage of adults reporting “bad” or “very bad” health."),
        tags$a(href = "https://data-explorer.oecd.org/vis?pg=0&bp=true&snb=9&df%5bds%5d=dsDisseminateFinalDMZ&df%5bid%5d=DSD_HEALTH_STAT%40DF_PHS&df%5bag%5d=OECD.ELS.HD&df%5bvs%5d&dq=.A...Y_GE15._T.....G..&pd=2010%2C&to%5bTIME_PERIOD%5d=false&tm=perceived%20health", "Source: OECD Perceived health status (database)."),
        
        tags$h5("Education level: Below University, University, Advanced Degrees:"),
        tags$h6("13.1 Educational attainment among young adults Indicator and unit of measurement: Percentage of people aged 25-34 who have attained at least an upper secondary education Type of indicator: Stock Definition: Educational attainment among young adults is measured as the percentage of people aged 25 to 34 that have attained at least upper secondary education. Upper secondary education uses the International Standard Classification of Education (ISCED) definition, of education at or above level 3. This includes both general programmes geared towards preparation for higher education, as well as vocational education and training (VET) programmes."),  
        tags$a(href = "https://data-explorer.oecd.org/vis?tm=DSD_EAG_LSO_EA%40DF_LSO_NEAC_DISTR_EA&pg=0&snb=29&df%5bds%5d=dsDisseminateFinalDMZ&df%5bid%5d=DSD_EAG_LSO_EA%40DF_LSO_NEAC_DISTR_EA&df%5bag%5d=OECD.EDU.IMEP&df%5bvs%5d&dq=._T.Y25T34.ISCED11A_3_4%2BISCED11A_5T8..........OBS...A&pd=2010%2C&to%5bTIME_PERIOD%5d=true&ly%5bcl%5d=ATTAINMENT_LEV&ly%5brs%5d=TIME_PERIOD&ly%5brw%5d=REF_AREA", "Source: OECD Adults' educational attainment distribution, by age group and gender (database), and and estimates provided by National Statistical Offices."),
        
        tags$h5("Safety: Safety is about freedom from harm, whether that harm comes in the form of crime, conflict, violence, terrorism, oppression, accidents or natural disasters."),
        tags$h4(""),
        tags$h6("10.1 Homicides Indicator and unit of measurement: Death due to assault, age-standardised rate, per 100 000 population Type of indicator: Country average and horizontal inequality (data by sex) Definition: Homicides refer to deaths due to assault (rate per 100 000 population). Data come from civil registration systems, compiled by national authorities, and collated by the World Health Organisation (WHO). Only medically certified causes of death are included."),        
        tags$h1("WILL COMPLETE THE FOLLOWING DATA SET DEFS HERE"),
        tags$h5(""),
        tags$h5(""),
        tags$br(),
        tags$h6(""),
        
        
      ),

      tabPanel(
        "Table",
        sidebarLayout(
          sidebarPanel(
            
            
            
            selectInput("table_country",
                        "Please select a country:",
                        choices = c(
                          "All", 
                          wellbeing_dropped %>% 
                            distinct(Reference_area) %>% 
                            pull() %>% 
                            sort()
                        ) 
            ),
            
            
          ),
          mainPanel(
            dataTableOutput("tableTable")
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
                        choices = c(
                          "Health Status: Fair" = "health_status_F", 
                          "Health Status: Bad" = "health_status_B", 
                          "Health Status: Good" = "health_status_G", 
                          "Upper secondary education" = "upper_secondary_education", 
                          "Tertiary education" = "tertiary_education", 
                          "Below upper secondary education" = "below_upper_secondary_education",
                          "Motor vehicle theft" = "motor_vehicle_theft", 
                          "Mortality from transport accidents" = "mortality_from_transport_accidents", 
                          "Intentional homicides" = "intentional_homicides", 
                          "Social Support" = "social_support",
                          "Lack of social support" = "lack_of_social_support",
                          "Feeling lonely" = "feeling_lonely",
                          "Life satisfaction" = "life_satisfaction",
                          "Satisfaction with personal relationships" = "satisfaction_w_relationships"
                        ),
            ),
            
            hr(),
            hr(),
            hr(),
            hr(),
            hr(),
            hr(),
            hr(),
            br(),
            uiOutput(
              "hist_bins2"
            ),
            
            selectInput("hist_country2",
                        "Please select a country:",
                        choices = c(
                          "All", 
                          wellbeing_dropped %>% 
                            distinct(Reference_area) %>% 
                            pull() %>% 
                            sort()
                        ) 
            ),
            
            selectInput("hist_variable2",
                        "Select Variable to Display:",
                        choices = c(
                          "Perceived Health Status" = "OBS_VALUE_PHS", 
                          "Educational Attainment" = "OBS_VALUE_EL", 
                          "Safety" = "OBS_VALUE_SAFETY", 
                          "Social" = "OBS_VALUE_SOCIAL", 
                          "Satisfaction with Life" = "OBS_VALUE_SAT"
                        ),
            )
            
          ),
          mainPanel(
            plotOutput("distPlot"),
            hr(),
            plotOutput("distPlot2"),
            hr(),
          )
        )
      ),
      
      
      tabPanel(
        
        "Question of the Data",
        tags$br(),
        tags$h4("Research question: Are social support and loneliness stronger predictors of life satisfaction than crime rates/safety?")
      ),
      
      
      tabPanel(
        "Scatterplot",
        sidebarLayout(
          sidebarPanel(
            selectInput("scatter_x",
                        "Select Variable to Display in scatter plot 1:",
                        choices = c(
                          "Health Status: Fair" = "health_status_F", 
                          "Health Status: Bad" = "health_status_B", 
                          "Health Status: Good" = "health_status_G", 
                          "Upper secondary education" = "upper_secondary_education", 
                          "Tertiary education" = "tertiary_education", 
                          "Below upper secondary education" = "below_upper_secondary_education",
                          "Motor vehicle theft" = "motor_vehicle_theft", 
                          "Mortality from transport accidents" = "mortality_from_transport_accidents", 
                          "Intentional homicides" = "intentional_homicides", 
                          "Social Support" = "social_support",
                          "Lack of social support" = "lack_of_social_support",
                          "Feeling lonely" = "feeling_lonely",
                          "Life satisfaction" = "life_satisfaction",
                          "Satisfaction with personal relationships" = "satisfaction_w_relationships"
                        ),
                        selected = "feeling_lonely"
                      ),
            selectInput("scatter_y",
                        "Select Variable to Display in scatter plot 1:",
                        choices = c(
                        "Health Status: Fair" = "health_status_F", 
                        "Health Status: Bad" = "health_status_B", 
                        "Health Status: Good" = "health_status_G", 
                        "Upper secondary education" = "upper_secondary_education", 
                        "Tertiary education" = "tertiary_education", 
                        "Below upper secondary education" = "below_upper_secondary_education",
                        "Motor vehicle theft" = "motor_vehicle_theft", 
                        "Mortality from transport accidents" = "mortality_from_transport_accidents", 
                        "Intentional homicides" = "intentional_homicides", 
                        "Social Support" = "social_support",
                        "Lack of social support" = "lack_of_social_support",
                        "Feeling lonely" = "feeling_lonely",
                        "Life satisfaction" = "life_satisfaction",
                        "Satisfaction with personal relationships" = "satisfaction_w_relationships"
                        ),
                        selected = "life_satisfaction"
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
            helpText("Certain countries may not contain the data variables selected."),
            hr(),
            hr(),
            hr(),
            hr(),
            hr(),
            hr(),
            hr(),
            selectInput("scatter_x2",
                        "Select Variable to Display in scatter plot 2:",
                        choices = c(
                          "Health Status: Fair" = "health_status_F", 
                          "Health Status: Bad" = "health_status_B", 
                          "Health Status: Good" = "health_status_G", 
                          "Upper secondary education" = "upper_secondary_education", 
                          "Tertiary education" = "tertiary_education", 
                          "Below upper secondary education" = "below_upper_secondary_education",
                          "Motor vehicle theft" = "motor_vehicle_theft", 
                          "Mortality from transport accidents" = "mortality_from_transport_accidents", 
                          "Intentional homicides" = "intentional_homicides", 
                          "Social Support" = "social_support",
                          "Lack of social support" = "lack_of_social_support",
                          "Feeling lonely" = "feeling_lonely",
                          "Life satisfaction" = "life_satisfaction",
                          "Satisfaction with personal relationships" = "satisfaction_w_relationships"
                        ),
                        selected = "social_support"
            ),
            selectInput("scatter_y2",
                        "Select Variable to Display in scatter plot 2:",
                        choices = c(
                          "Health Status: Fair" = "health_status_F", 
                          "Health Status: Bad" = "health_status_B", 
                          "Health Status: Good" = "health_status_G", 
                          "Upper secondary education" = "upper_secondary_education", 
                          "Tertiary education" = "tertiary_education", 
                          "Below upper secondary education" = "below_upper_secondary_education",
                          "Motor vehicle theft" = "motor_vehicle_theft", 
                          "Mortality from transport accidents" = "mortality_from_transport_accidents", 
                          "Intentional homicides" = "intentional_homicides", 
                          "Social Support" = "social_support",
                          "Lack of social support" = "lack_of_social_support",
                          "Feeling lonely" = "feeling_lonely",
                          "Life satisfaction" = "life_satisfaction",
                          "Satisfaction with personal relationships" = "satisfaction_w_relationships"
                        ),
                        selected = "life_satisfaction"
            ),
            selectInput("scatter_country2", 
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
            plotOutput("scatPlot1"),
            hr(),
            plotOutput("scatPlot2"),
            hr(),
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
            
            checkboxGroupInput("checkboxes", 
                               "Check 4 or more:", 
                               list(
              "Health Status: Fair" = "health_status_F", 
              "Health Status: Bad" = "health_status_B", 
              "Health Status: Good" = "health_status_G", 
              "Upper secondary education" = "upper_secondary_education", 
              "Tertiary education" = "tertiary_education", 
              "Below upper secondary education" = "below_upper_secondary_education",
              "Motor vehicle theft" = "motor_vehicle_theft", 
              "Mortality from transport accidents" = "mortality_from_transport_accidents", 
              "Intentional homicides" = "intentional_homicides", 
              "Social Support" = "social_support",
              "Lack of social support" = "lack_of_social_support",
              "Feeling lonely" = "feeling_lonely",
              "Life satisfaction" = "life_satisfaction",
              "Satisfaction with personal relationships" = "satisfaction_w_relationships"
            ), selected = c("life_satisfaction", "feeling_lonely", "social_support", "intentional_homicides")
            )
  
          ),
          
          mainPanel(
            plotOutput("heatmapPlot")
          )
          
        )
      ),
      

      tabPanel(
        "Conclusion",
        
      ),
      
      
      
      
    )
  )
)


