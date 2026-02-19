# light <- bs_theme()
# dark <- bs_theme(bg = "black", fg = "white", primary = "purple")

# ui <- fluidPage(
#   theme = light,
#   checkboxInput("dark_mode", "Dark mode")
# )
# server <- function(input, output, session) {
#   observe(session$setCurrentTheme(
#     if (isTRUE(input$dark_mode)) dark else light
#   ))
# }
# shinyApp(ui, server)



# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Where Wellbeing Lives"),
  
  theme = light,
  checkboxInput("dark_mode", "Dark mode"),
  
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
        tags$h4("Where does the data comes from?"),
        tags$a(href = "https://www.oecd.org/content/dam/oecd/en/topics/policy-sub-issues/measuring-well-being-and-progress/oecd-well-being-database-definitions.pdf", "The OECD Data sets Definitions and metadata are provided here."),
        HTML(r"(<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
        Accordion Item #1
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Accordion Item #2
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong>This is the second item\'s accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Accordion Item #3
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong>This is the third item\'s accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
          <a href = "https://dataexplorer.oecd.org/vis?df[ds]=dsDisseminateFinalDMZ&df[id]=DSD_HEALTH_STAT%40DF_COM&df[ag]=OECD.ELS.HD&df[vs]&pd=2015%2C&dq=.A..DT_10P5HB....CICDHOCD.STANDARD....&ly[rw]=REF_AREA&ly[cl]=TIME_PERIOD&ly[rs]=DEATH_CAUSE%2CSEX&to[TIME_PERIOD]=false"> This is the href.</a>
      </div>
    </div>
  </div>
   <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
        Accordion Item #4
      </button>
    </h2>
    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
   <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
        Accordion Item #5
      </button>
    </h2>
    <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
   <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
        Accordion Item #6
      </button>
    </h2>
    <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
</div>)"),


# tags$br(),
# tags$h4("Where does the data comes from?"),
# tags$h5("The datasets used here were compiled using several different sources. "),
# 
# tags$a(href = "https://www.oecd.org/content/dam/oecd/en/topics/policy-sub-issues/measuring-well-being-and-progress/oecd-well-being-database-definitions.pdf", "The OECD Data sets Definitions and metadata are provided here."),
# 
# tags$h5("Perceived Health Status: Bad, Fair, and Good:"),
# tags$h6("5.2 Perceived health: Indicator and unit of measurement: Percentage of the population 16 years or over reporting “good” or “very good” health Type of indicator: Country average, deprivation, and horizontal inequality (data by sex, education and age [young=15-24 years, middle-aged=25-64 years and old=65+ years]) Definition: Perceived health refers to people’s overall self-reported health status. Averages in perceived health refer to the percentage of adults reporting “good” or “very good” health. Data are based on general household surveys or on more detailed health interviews. The indicator is based on questions such as: “How is your health in general?”, with answers usually classified as “very good”, “good”, “not very good” and “poor” – although in some non-European countries (Australia, Canada, Chile, Israel, New Zealand, the United States) different response scales are used, which may lead to an upward bias in the estimates. In the OECD Health Status database, the response categories from different surveys are rescored to fit into three broad categories of “good/very good” (all positive response categories), “fair” (neither good nor bad), “bad/very bad” (all negative response categories). Respondents are generally 16 years or over, though the specific age range varies across countries. Data are based on general household surveys or on more detailed health interviews. Deprivation in perceived health is measured as the percentage of adults reporting “bad” or “very bad” health."),
# tags$h7("Source: OECD Perceived health status (database),"),
# tags$a(href = ""),
# tags$a(href = "https://data-explorer.oecd.org/vis?pg=0&bp=true&snb=9&df%5bds%5d=dsDisseminateFinalDMZ&df%5bid%5d=DSD_HEALTH_STAT%40DF_PHS&df%5bag%5d=OECD.ELS.HD&df%5bvs%5d&dq=.A...Y_GE15._T.....G..&pd=2010%2C&to%5bTIME_PERIOD%5d=false&tm=perceived%20health", "Source: OECD Perceived health status (database)."),
# 
# tags$br(),
# 
# tags$h5("Education level: Below University, University, Advanced Degrees:"),
# tags$h6("13.1 Educational attainment among young adults Indicator and unit of measurement: Percentage of people aged 25-34 who have attained at least an upper secondary education Type of indicator: Stock Definition: Educational attainment among young adults is measured as the percentage of people aged 25 to 34 that have attained at least upper secondary education. Upper secondary education uses the International Standard Classification of Education (ISCED) definition, of education at or above level 3. This includes both general programmes geared towards preparation for higher education, as well as vocational education and training (VET) programmes."),
# tags$a(href = ""),
# tags$a(href = "https://data-explorer.oecd.org/vis?tm=DSD_EAG_LSO_EA%40DF_LSO_NEAC_DISTR_EA&pg=0&snb=29&df%5bds%5d=dsDisseminateFinalDMZ&df%5bid%5d=DSD_EAG_LSO_EA%40DF_LSO_NEAC_DISTR_EA&df%5bag%5d=OECD.EDU.IMEP&df%5bvs%5d&dq=._T.Y25T34.ISCED11A_3_4%2BISCED11A_5T8..........OBS...A&pd=2010%2C&to%5bTIME_PERIOD%5d=true&ly%5bcl%5d=ATTAINMENT_LEV&ly%5brs%5d=TIME_PERIOD&ly%5brw%5d=REF_AREA", "Source: OECD Adults' educational attainment distribution, by age group and gender (database), and and estimates provided by National Statistical Offices."),
# 
# tags$br(),
# 
# tags$h5("Safety: Safety is about freedom from harm, whether that harm comes in the form of crime, conflict, violence, terrorism, oppression, accidents or natural disasters."),
# tags$h6("10.1 Homicides Indicator and unit of measurement: Death due to assault, age-standardised rate, per 100 000 population Type of indicator: Country average and horizontal inequality (data by sex) Definition: Homicides refer to deaths due to assault (rate per 100 000 population). Data come from civil registration systems, compiled by national authorities, and collated by the World Health Organisation (WHO). Only medically certified causes of death are included."),
# tags$h7("Source: OECD Causes of mortality (database),"),
# tags$a(href = "https://dataexplorer.oecd.org/vis?df[ds]=dsDisseminateFinalDMZ&df[id]=DSD_HEALTH_STAT%40DF_COM&df[ag]=OECD.ELS.HD&df[vs]&pd=2015%2C&dq=.A..DT_10P5HB....CICDHOCD.STANDARD....&ly[rw]=REF_AREA&ly[cl]=TIME_PERIOD&ly[rs]=DEATH_CAUSE%2CSEX&to[TIME_PERIOD]=false"),
# tags$a(href = "https://data-explorer.oecd.org/vis?tm=safety&pg=0&snb=54&df[ds]=dsDisseminateFinalDMZ&df[id]=DSD_REG_SOC%40DF_SAFETY&df[ag]=OECD.CFE.EDS&df[vs]=2.2&dq=A.CTRY...HOMIC%2BVEH_THEFT%2BMORT_ICDV_CRUDE_RATIO...CS_10P5PS&pd=1995%2C2024&to[TIME_PERIOD]=false"),
# 
# tags$br(),
# 
# tags$h5("7. Social connections: Social Connections capture the quantity of social interactions (e.g., frequency and amount of time individuals spend with household members, their family, friends, colleagues, and other known persons), their quality (e.g. satisfaction with social interactions, perceived loneliness), and the support (e.g. emotional and financial) provided by these connections."),
# tags$h6("7.1 Social support: Indicator and unit of measurement: Percentage of people who report having friends or relatives whom they can count on in times of trouble Type of indicator: Country average, deprivation, and horizontal inequality (data by sex, education and age [young=15-29 years, middle-aged=30-49 years, and old=50+ years]) Definition: Social support is measured by the percentage of people answering `yes` to a (yes/no) question: “If you were in trouble, do you have relatives or friends you can count on to help you whenever you need them, or not?”. The source for these data is the Gallup World Poll, which samples around 1 000 people per country, per year. The sample is ex ante designed to be nationally representative of the population aged 15 or over (including rural areas). Due to the small sample size, data are pooled as follows: • for the country average and data by sex: 3-year pooled averages (from 2006 to 2019, resulting in five data points: 2008-10, 2011-13, 2014-16, 2017-19, 2020-22) and 2-year pooled averages (from 2006 to 2007 and from 2023 to 2024, resulting in two data points: 2006-07 and 2023-24); • for data by age: 7-year pooled averages (from 2011 to 2024, resulting in two data points: 2011-17 and 2018- 24) and a 5-year pooled average for 2006-10; • for data by education attainment: 5-year pooled averages (from 2010 to 2023, resulting in three data points: 2010-14, 2015-19 and 2020-24) and a 4-year pooled average for 2006-09. Deprivation in social support refer to the percentage of people answering `no` to the question mentioned above."),
# tags$h7("Source: Gallup World Poll,"),
# tags$a(href = "https://gallup.com/analytics/232838/world-poll.aspx"),
# 
# tags$h6("7.3 Satisfaction with personal relationships: Indicator and unit of measurement: Mean average satisfaction with personal relationships on an 11-point scale, with responses ranging from 0 (not at all satisfied) to 10 (completely satisfied) Type of indicator: Country average, deprivation, vertical and horizontal inequality (data by sex, education and age [young=16-29 years, middle-aged=30-49 years, and old=50+ years]) Definition: Satisfaction with personal relationships refers to the mean score of survey respondents who rate their satisfaction with their personal relationships on an 11-point scale, from 0 (not at all satisfied) to 10 (completely satisfied). The variable refers to the respondent’s opinion/feeling about the degree of satisfaction with his/her personal relationships. The respondent is expected to make a broad, reflective appraisal of all areas of his/her personal relationships (e.g. relatives, friends, colleagues from work etc.) in a particular point in time (these days). This indicator refers to individuals aged 16 or more, except for Canada (15 or more) and Mexico (18 or more). Deprivation for this indicator refer to the percentage of people answering 4 or below. Vertical inequality for this indicator is measured by the ratio of satisfaction with personal relationships scores of the top 20% (i.e. the quintile with the highest scores in satisfaction with personal relationships) relative to the bottom 20% (i.e. the quintile with the lowest scores in satisfaction with personal relationships)."),
# tags$h7("Source: OECD calculations based on Eurostat’s European Union Statistics on Income and Living Conditions (EUSILC) (database),"),
# tags$a(href = "https://ec.europa.eu/eurostat/data/database"),
# tags$h7("and estimates provided by National Statistical Offices."),
# 
# tags$h6("7.4 Loneliness: Indicator and unit of measurement: Percentage of people feeling lonely most or all of the time in the past four weeks Type of indicator: Deprivation and horizontal inequality (data by sex, education and age [young=16-29 years, middleaged=30-49 years, and old=50+ years]) Definition: Loneliness refers to the percentage of people who report feeling lonely “all of the time” and “most of the time” in the past four weeks. The following question is asked to the household reference person: ““How much of the time over the past four weeks have you been feeling lonely?”, with response categories: “all of the time”, “most of the time”, “some of the time”, “a little of the time”, and “none of the time”. Canada, Japan, the United Kingdom and the United States do not include a time frame in their question format for loneliness and are therefore not directly comparable with the other countries. The United Kingdom data refers to England only."),
# tags$h7("Source: European Union Statistics on Income and Living Conditions (EU-SILC) (database), "),
# tags$a(href = "https://ec.europa.eu/eurostat/web/income-andliving-conditions"),
# tags$h7("and estimates provided by National Statistical Offices."),
# 
# tags$a(href = "https://data-explorer.oecd.org/vis?tm=social%20wellbeing&pg=0&snb=9&df[ds]=dsDisseminateFinalDMZ&df[id]=DSD_HSL%40DF_HSL_CWB&df[ag]=OECD.WISE.WDP&df[vs]=1.1&dq=..._T._T._T.&pd=2010%2C&to[TIME_PERIOD]=false"),
# 
# tags$br()


# tags$h5(""),
# tags$h6(""),
# tags$h6(""),
# tags$a(href = ""),
# 
# 
# 
# tags$br(),
# tags$h6(""),


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
  tags$h4("Research question: Are social support and loneliness stronger predictors of life satisfaction than crime rates/safety?"),
  
  tags$figure(),
  tags$blockquote("Connection is why [we are] here. We are hardwired to connect with others, [it is] what gives purpose and meaning to our lives, and without it there is suffering."),
  tags$figcaption("Brené Brown"),
  
  
  
  
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
  
  sidebarLayout(
    sidebarPanel(
      
      # tags$h8("While intentional homicide had a slightly higher negative correlation with life satisfaction, when you consider the uncertainty in the estimate, it cannot be said that there is a stronger effect on life satisfaction than feeling lonely."),
      # tags$h8("Countries whose populations identify as having fair health are more strongly negatively correlated with life satisfaction than intentional homicides.")
      
      
    ),
    
    mainPanel(
      plotOutput("confintPlot"),
      
      tags$h6("Research question: Are social support and loneliness stronger predictors of life satisfaction than crime rates/safety?"),
        )
  )
  
  
),


    )
  )
)


