#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.

# Load Libraries
library(shiny)
library(tidyverse)
library(ggrepel)
library(dplyr)

# Load and Merge Data 

counties <- read.csv(file = 'counties.csv')
#loading data
PA <- map_data(map = "county", region = "Pennsylvania")
counties$name <- tolower(str_remove_all(counties$name, " County"))
#merging data
mapdata <- left_join(PA, counties, by = c("subregion" = "name"))
mapdata$year <- as.character(mapdata$year)
map2016 <- mapdata %>% filter(year == 2016)

#View(mapdata)

# Define UI 
ui <- fluidPage(
    
    # Application title
    titlePanel("Correlation Between Various Eviction-Related Variables in PA"),
    
    # Sidebar layout with a input and output definitions
    sidebarLayout(
        # Inputs: Select variables to plot
        sidebarPanel(
            
            selectInput(inputId = "yr", label = "Year", 
                        choices = 2000:2016,
                        selected = 2000),
            
            # Select variable for y-axis
            selectInput(inputId = "y", 
                        label = "Y-axis:",
                        choices = c("Poverty Rate" = "poverty.rate", 
                                    "Rent Burden" = "rent.burden", 
                                    "Eviction Rate" = "eviction.rate", 
                                    "Eviction Filing Rate" = "eviction.filing.rate"), 
                        selected = "eviction.rate"),
            
            # Select variable for x-axis
            selectInput(inputId = "x", 
                        label = "X-axis:",
                        choices = c("Median Gross Rent" = "median.gross.rent", 
                                    "Percent Renter Occupied" = "pct.renter.occupied", 
                                    "Median Household Income" = "median.household.income", 
                                    "Median Property Value" = "median.property.value"), 
                        selected = "median.gross.rent"),

        ),
        #Output
        
        mainPanel(
            
            # Show scatterplot
            plotOutput(outputId = "scatterplot"),
            br(), # a little bit of visual separation
        )
    )
)

# Define server function --------------------------------------------
server <- function(input, output) {
    
   # filterData <- reactive({
  #      mapdata %>% filter(year == input$yr)
   # }) 
    
    # Create scatterplot object the plotOutput function is expecting
    output$scatterplot <- renderPlot({

     #maptotal <- mapdata %>% filter(year == input$yr)
        # Creates base plot 
        p1 = ggplot(data = mapdata[mapdata$year == input$yr,], aes_string(x = input$x, y = input$y)) +
            geom_point(size = 1.5, color = "blue", na.rm = TRUE) +
            theme_minimal(base_size = 14, base_family = "serif") + 
            labs(title = "PA", 
                 x = str_to_title(str_replace_all(input$x, "_", " ")),
                 y = str_to_title(str_replace_all(input$y, "_", " "))) 
        
        p1
    })
}

# Create the Shiny app object ---------------------------------------
shinyApp(ui, server)