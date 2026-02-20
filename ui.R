
# Define UI for application that draws a histogram
fluidPage(
  
  theme = bs_theme(
    bg = "#333333",
    fg = "#FFF",
    primary = "#E69F00",
    secondary = "#0072B2",
    success = "#009E73",
    base_font = "sans-serif",
    code_font = font_google("JetBrains Mono"),
    heading_font = "Serif",
  ),
  # checkboxInput("dark_mode", "Dark mode"),
  # Application title
  titlePanel("Where Wellbeing Lives"),
  
  
  
  # theme = light,
  
  
  # Sidebar with a slider input for number of bins
  
  # Show a plot of the generated distribution
  mainPanel(
    
    
    
    tabsetPanel(
      tabPanel(
        "Welcome",
        HTML(r"(
             <br>
             <img src="https://i.ibb.co/My7tcjHZ/wellbeing-image-06.jpg" alt="wellbeing image 06" border="0">
             
        )"),
      ),
      tabPanel(
        
        "Introduction",
        
        
        HTML(r"(
              <br>
             <p> <em>Hi!</em> I'm Cat D. Gomez. 
             <p> This app was completed as my midcourse project of the data science bootcamp at Nashville Software School February of 2026. ❤
               <br>
            <blockquote> <em>Connection is why we're here. We are hardwired to connect with others, it's what gives purpose and meaning to our lives, and without it there is suffering.</em> ~Brené Brown 
            </blockquote>
             <p> I asked:
             <strong> Are social support and loneliness stronger predictors of life satisfaction than crime rates? </strong> 
             <p> Is life satisfaction more deeply rooted in emotional safety than in physical safety? <br> In health? <br> In connection? <br> Or is it rooted in something less visible, like belonging?
               <br>
             <p> Here, emotional safety is represented by:
              <br> <strong> Social Support </strong> and <strong> loneliness. </strong> 
              <br>
             <p> While physical safety is represented by:
              <br> <strong> Intentional Homicide Rates </strong> and <strong> other crime indicators such as motor vehicle thefts. </strong> 

              
            
        )"),
        tags$br(),
        tags$h6("I invite you, as I have, to explore those relationships, and others, across countries using publicly available international survey data from the following site:"),
        tags$a(href = "https://data-explorer.oecd.org/", "Organisation for Economic Co-operation and Development Data Explorer")
        
      ),
      
      tabPanel(
        
        "Data",
        
        
        tags$br(),
        tags$br(),

        tags$h4("Where does the data comes from?"),
        
        tags$br(),
        
        tags$h6("First the data I worked with was pulled from the :"),
        tags$a(href = "https://data-explorer.oecd.org/", "Organisation for Economic Co-operation and Development Data Explorer"),
      
        tags$br(),
        tags$br(),

        tags$h6("You can find exceptionally detailed definitions and metadata on the datasets I used here:"),
        tags$a(href = "https://www.oecd.org/content/dam/oecd/en/topics/policy-sub-issues/measuring-well-being-and-progress/oecd-well-being-database-definitions.pdf", "The OECD Data sets Definitions and metadata are provided here."),
        tags$br(),
        tags$br(),

        
        HTML(r"(<div class="accordion" id="accordionExample">
  
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
        Perceived Health Status: Bad, Fair, and Good
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong> Perceived health </strong> Indicator and unit of measurement: Percentage of the population 16 years or over reporting “good” or “very good” health Type of indicator: Country average, deprivation, and horizontal inequality (data by sex, education and age [young=15-24 years, middle-aged=25-64 years and old=65+ years]) Definition: Perceived health refers to people’s overall self-reported health status. Averages in perceived health refer to the percentage of adults reporting “good” or “very good” health. Data are based on general household surveys or on more detailed health interviews. The indicator is based on questions such as: “How is your health in general?”, with answers usually classified as “very good”, “good”, “not very good” and “poor” – although in some non-European countries (Australia, Canada, Chile, Israel, New Zealand, the United States) different response scales are used, which may lead to an upward bias in the estimates. In the OECD Health Status database, the response categories from different surveys are rescored to fit into three broad categories of “good/very good” (all positive response categories), “fair” (neither good nor bad), “bad/very bad” (all negative response categories). Respondents are generally 16 years or over, though the specific age range varies across countries. Data are based on general household surveys or on more detailed health interviews. Deprivation in perceived health is measured as the percentage of adults reporting “bad” or “very bad” health."
        <a href = "https://data-explorer.oecd.org/vis?pg=0&bp=true&snb=9&df%5bds%5d=dsDisseminateFinalDMZ&df%5bid%5d=DSD_HEALTH_STAT%40DF_PHS&df%5bag%5d=OECD.ELS.HD&df%5bvs%5d&dq=.A...Y_GE15._T.....G..&pd=2010%2C&to%5bTIME_PERIOD%5d=false&tm=perceived%20health" > Source: OECD Perceived health status (database). </a>
        </div>
    </div>
  </div>
  
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Education level: Below University, University, Advanced Degrees
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong> Adults' educational attainment distribution, by age group and gender: </strong> This dataset contains data on the distribution of adults with a given age group and gender by educational attainment level. The default table displays 2024 data (or the latest available year) on the distribution of 25-64 year-olds by educational attainment. The selection can be changed to display data by programme orientation, by gender and by age group. Filter the time period to display historical data. 
        </br>
  <a href = "https://www.oecd.org/en/publications/education-at-a-glance_19991487.html" > For more information, please consult the Education at a Glance web page. </a>
          </br>
            </br>
          <a href = "https://doi.org/10.1787/9789264304444-en" > And the OECD Handbook for Internationally Comparative Education Statistics: Concepts, Standards, Definitions and Classifications. </a>
          </br>        
            </br>
          <a href = https://data-explorer.oecd.org/vis?tm=DSD_EAG_LSO_EA%40DF_LSO_NEAC_DISTR_EA&pg=0&snb=29&df%5bds%5d=dsDisseminateFinalDMZ&df%5bid%5d=DSD_EAG_LSO_EA%40DF_LSO_NEAC_DISTR_EA&df%5bag%5d=OECD.EDU.IMEP&df%5bvs%5d&dq=._T.Y25T34.ISCED11A_3_4%2BISCED11A_5T8..........OBS...A&pd=2010%2C&to%5bTIME_PERIOD%5d=true&ly%5bcl%5d=ATTAINMENT_LEV&ly%5brs%5d=TIME_PERIOD&ly%5brw%5d=REF_AREA> Source: OECD Adults' educational attainment distribution, by age group and gender (database), and and estimates provided by National Statistical Offices. </a>
      </div>
    </div>
  </div>

  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Safety - Regions: Mortality from Transport Accidents, Intentional Homicides, Motor Vehicle Thefts
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong> Safety - Regions: This dataset provides statistics on safety in subnational regions. It covers homicide rates, motor vehicle thefts and mortality rates due to transport in regions. </strong> Data definition and source Homicide rates total and women) refers to the number intentional homicides per 100,000 inhabitants in a given year. Intentional homicides are defined as unlawful killings deliberately inflicted on one person by another. Motor vehicle theft rate refers to the number of motor vehicles reported stolen (theft or attempted theft) per 100,000 inhabitants in a given year. A motor vehicle is a self-propelled vehicle that runs on land surfaces and not on rails. Transport related mortality rate is the number of deaths attributed to transport accidents (in the groups V01-V99 of the International Classification of Deseases - ICS) per 100,000 inhabitants. Definition of regions  Regions are subnational units below national boundaries. OECD countries have two regional levels: large regions (territorial level 2 or TL2) and small regions (territorial level 3 or TL3).              
          <a href = "https://data-explorer.oecd.org/vis?tm=safety&pg=0&snb=54&df[ds]=dsDisseminateFinalDMZ&df[id]=DSD_REG_SOC%40DF_SAFETY&df[ag]=OECD.CFE.EDS&df[vs]=2.2&dq=A..AUS%2BAU1%2BAU2%2BAU3%2BAU4%2BAU5%2BAU6%2BAU7%2BAU8%2BAUT%2BAT11%2BAT111%2BAT112%2BAT113%2BAT12%2BAT121%2BAT122%2BAT123%2BAT124%2BAT125%2BAT126%2BAT127%2BAT13%2BAT130%2BAT21%2BAT211%2BAT212%2BAT213%2BAT22%2BAT221%2BAT222%2BAT223%2BAT224%2BAT225%2BAT226%2BAT31%2BAT311%2BAT312%2BAT313%2BAT314%2BAT315%2BAT32%2BAT321%2BAT322%2BAT323%2BAT33%2BAT331%2BAT332%2BAT333%2BAT334%2BAT335%2BAT34%2BAT341%2BAT342..HOMIC...CS_10P5PS&lom=LASTNPERIODS&lo=5&to[TIME_PERIOD]=false" > OECD Data Source. </a>      
          </br>  
          </br>
      </div>
    </div>
  </div>

   <div class="accordion-item">
    <h2 class="accordion-header" id="headingFour">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
        ~~~Social connections~~~
      </button>
    </h2>
    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        
        </br>
        <strong> Social Connections capture the quantity of social interactions (e.g., frequency and amount of time individuals spend with household members, their family, friends, colleagues, and other known persons), their quality (e.g. satisfaction with social interactions, perceived loneliness), and the support (e.g. emotional and financial) provided by these connections. </strong> 
          </br>     
          <a href = "https://data-explorer.oecd.org/vis?tm=social%20connections&pg=0&snb=20&df[ds]=dsDisseminateFinalDMZ&df[id]=DSD_HSL%40DF_HSL_CWB&df[ag]=OECD.WISE.WDP&df[vs]=1.1&dq=AUS.11_2%2B11_1%2B9_3%2B9_2%2B8_2%2B8_1_DEP%2B7_2%2B7_1_DEP%2B6_2%2B5_3%2B5_1%2B4_3%2B4_1%2B3_2%2B3_1%2B2_7%2B2_2%2B2_1%2B1_3%2B1_2%2B1_1.._T._T._T.HSL_7&pd=2010%2C&to[TIME_PERIOD]=false&isAvailabilityDisabled=false"> OECD Dataest </a>
      </div>
    </div>
  </div>
  
   <div class="accordion-item">
    <h2 class="accordion-header" id="headingFive">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
        Social connection: Social support
      </button>
    </h2>
    <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
         <strong> Social support </strong> Indicator and unit of measurement: Percentage of people who report having friends or relatives whom they can count on in times of trouble Type of indicator: Country average, deprivation, and horizontal inequality (data by sex, education and age [young=15-29 years, middle-aged=30-49 years, and old=50+ years]) Definition: Social support is measured by the percentage of people answering "yes" to a (yes/no) question: “If you were in trouble, do you have relatives or friends you can count on to help you whenever you need them, or not?”. The source for these data is the Gallup World Poll, which samples around 1 000 people per country, per year. The sample is ex ante designed to be nationally representative of the population aged 15 or over (including rural areas). Due to the small sample size, data are pooled as follows: • for the country average and data by sex: 3-year pooled averages (from 2006 to 2019, resulting in five data points: 2008-10, 2011-13, 2014-16, 2017-19, 2020-22) and 2-year pooled averages (from 2006 to 2007 and from 2023 to 2024, resulting in two data points: 2006-07 and 2023-24); • for data by age: 7-year pooled averages (from 2011 to 2024, resulting in two data points: 2011-17 and 2018- 24) and a 5-year pooled average for 2006-10; • for data by education attainment: 5-year pooled averages (from 2010 to 2023, resulting in three data points: 2010-14, 2015-19 and 2020-24) and a 4-year pooled average for 2006-09. Deprivation in social support refer to the percentage of people answering "no" to the question mentioned above         
          </br>
            <a href =  "https://gallup.com/analytics/232838/world-poll.aspx" > Source: Gallup World Poll </a>
          </br>
      </div>
    </div>
  </div>
  
   <div class="accordion-item">
    <h2 class="accordion-header" id="headingSix">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
        Social Connection: Satisfaction with personal relationships
      </button>
    </h2>
    <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong> Satisfaction with personal relationships </strong> Indicator and unit of measurement: Mean average satisfaction with personal relationships on an 11-point scale, with responses ranging from 0 (not at all satisfied) to 10 (completely satisfied) Type of indicator: Country average, deprivation, vertical and horizontal inequality (data by sex, education and age [young=16-29 years, middle-aged=30-49 years, and old=50+ years]) Definition: Satisfaction with personal relationships refers to the mean score of survey respondents who rate their satisfaction with their personal relationships on an 11-point scale, from 0 (not at all satisfied) to 10 (completely satisfied). The variable refers to the respondent’s opinion/feeling about the degree of satisfaction with his/her personal relationships. The respondent is expected to make a broad, reflective appraisal of all areas of his/her personal relationships (e.g. relatives, friends, colleagues from work etc.) in a particular point in time (these days). This indicator refers to individuals aged 16 or more, except for Canada (15 or more) and Mexico (18 or more). Deprivation for this indicator refer to the percentage of people answering 4 or below. Vertical inequality for this indicator is measured by the ratio of satisfaction with personal relationships scores of the top 20% (i.e. the quintile with the highest scores in satisfaction with personal relationships) relative to the bottom 20% (i.e. the quintile with the lowest scores in satisfaction with personal relationships).               
          </br>
          <a href = "https://ec.europa.eu/eurostat/data/database" > Source: OECD calculations based on Eurostat’s European Union Statistics on Income and Living Conditions (EUSILC) (database), and estimates provided by National Statistical Offices. </a>
          </br> 
        </div>
    </div>
  </div>
  

  <div class="accordion-item">
    <h2 class="accordion-header" id="headingSeven">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
        Social connection: Loneliness
      </button>
    </h2>
    <div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong> Loneliness </strong> Indicator and unit of measurement: Percentage of people feeling lonely most or all of the time in the past four weeks Type of indicator: Deprivation and horizontal inequality (data by sex, education and age [young=16-29 years, middleaged=30-49 years, and old=50+ years]) Definition: Loneliness refers to the percentage of people who report feeling lonely “all of the time” and “most of the time” in the past four weeks. The following question is asked to the household reference person: ““How much of the time over the past four weeks have you been feeling lonely?”, with response categories: “all of the time”, “most of the time”, “some of the time”, “a little of the time”, and “none of the time”. Canada, Japan, the United Kingdom and the United States do not include a time frame in their question format for loneliness and are therefore not directly comparable with the other countries. The United Kingdom data refers to England only.  
          <a href = "https://ec.europa.eu/eurostat/web/income-andliving-conditions" > BROKEN LINK: Source: European Union Statistics on Income and Living Conditions (EU-SILC) (database), and estimates provided by National Statistical Offices. </a>
      </div>
    </div>
  </div>


  <div class="accordion-item">
    <h2 class="accordion-header" id="headingEight">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
        Social connection: Satisfaction with Life
      </button>
    </h2>
    <div id="collapseEight" class="accordion-collapse collapse" aria-labelledby="headingEight" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong> Life satisfaction  </strong> Indicator and unit of measurement: Mean values on an 11-point scale, with responses ranging from 0 (not at all satisfied) to 10 (fully satisfied) Type of indicator: Country average, deprivation, vertical and horizontal inequality (data by sex, education and age [young=16-29 years, middle-aged=30-49 years, and old=50+ years]) Definition: Life satisfaction is measured through survey questions concerning overall satisfaction with life. Averages refer to mean scores. Consistent with the OECD Guidelines on Measuring Subjective Well-being, the question format typically used in OECD countries is: “Overall, how satisfied are you with your life as a whole these days?”, with a response scale ranging from 0 to 10, anchored by 0 (“not at all satisfied”) and 10 (“completely satisfied”). Despite progress in harmonisation, there are minor differences in the question wording across OECD countries, such as the scale anchors used (e.g. “very dissatisfied” to “very satisfied” in Canada; “completely dissatisfied” and “completely satisfied” in New Zealand) as well as more substantial methodological differences (e.g. identification of the scale midpoint, 5, as “neutral” in Korea). Differences in the population sampled also limit comparability. In the majority of OECD countries, data refer to the population 16 years and older, with minor variations in Australia, Canada, Colombia and New Zealand (where data refer to those aged 15 and older), Mexico (those aged 18 and older) and Korea (those aged 19 and older from 2020. Until 2019, the age range was significantly narrow: 19-69 years). Deprivation refers to the percentage of the population reporting a life satisfaction of 4 or below. Vertical inequality refers to the ratio of life satisfaction scores of the top 20% (i.e. the quintile with the highest scores in life satisfaction) relative to the bottom 20% (i.e. the quintile with the lowest scores in life satisfaction).                      
          <a href = "https://ec.europa.eu/eurostat/data/database" > Source: European Union Statistics on Income and Living Conditions (EU-SILC) (database) and estimates provided by National Statistical Offices. </a>  
          <a href =  > OECD Dataset </a>
      </div>
  </div>
    </div>
  

 
  

</div>)"),

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
  "Histograms and Line Graphs",
  sidebarLayout(
    sidebarPanel(
      
     
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
                    "Satisfaction with Life" = "OBS_VALUE_SAT",
                    "Perceived Health Status" = "OBS_VALUE_PHS", 
                    "Educational Attainment" = "OBS_VALUE_EL", 
                    "Safety" = "OBS_VALUE_SAFETY", 
                    "Social" = "OBS_VALUE_SOCIAL" 
                    
                  ),
      )
      
    ),
    mainPanel(
      plotOutput("distPlot2"),
      hr(),
    )
  )
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
      ),
      helpText("Certain countries may not contain the data variables selected."),
      
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
      
      tags$h6("While intentional homicide had a slightly higher negative correlation with life satisfaction, when you consider the uncertainty in the estimate, it cannot be said that there is a stronger effect on life satisfaction than feeling lonely does."),
      tags$br(),
      tags$h6("Countries whose populations identify as having bad or even fair health are more strongly negatively correlated with life satisfaction than intentional homicides."),
      tags$br(),
      tags$h6("Life satisfaction appears more strongly associated with emotional security than with physical safety at the national level."),

      
    ),
    
    mainPanel(
      tags$br(),
      tags$h6("Are social support and loneliness stronger predictors of life satisfaction than crime rates? "),
      tags$br(),
      plotOutput("confintPlot"),
      
      
    )
  )
  
  
),


    )
  )
)



