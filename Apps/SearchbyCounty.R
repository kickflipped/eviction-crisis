#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.

# Load Libraries
library(shiny)
library(tidyverse)
library(ggrepel)
library(plotly)

# Load and Merge Data
counties <- read.csv(file = 'counties.csv')
#loading data
PA <- map_data(map = "county", region = "Pennsylvania")
counties$name <- tolower(str_remove_all(counties$name, " County"))
#merging data
mapdata <- left_join(PA, counties, by = c("subregion" = "name"))

county <- unique(mapdata$subregion)
# Define UI

ui <- fluidPage(
    selectizeInput(
        inputId = "counties", 
        label = NULL,
        # placeholder is enabled when 1st choice is an empty string
        choices = c("Please choose a county" = "", county), 
        multiple = TRUE
    ),
    plotlyOutput(outputId = "p")
)

server <- function(input, output, session) {
    
    output$p <- renderPlotly({
        req(input$counties)
        if (identical(input$counties, "")) return(NULL)
        p <- ggplot(data = filter(mapdata, subregion %in% input$counties)) + 
            geom_line(aes(year, eviction.rate, group = subregion, color = subregion)) +
            labs(
                title = "Eviction Rate over Time by County",
                x = "Year",
                y = "Eviction Rate (%)",
                color = "County"
            ) 
        height <- session$clientData$output_p_height
        width <- session$clientData$output_p_width
        ggplotly(p, height = height, width = width)
    })
}

shinyApp(ui, server)
