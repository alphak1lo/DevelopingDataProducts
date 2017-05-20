###smiley facer maker
library(shiny)
library(plotrix)

shinyUI(fluidPage(
  titlePanel("Smiley facer maker"),
  sidebarLayout(
    sidebarPanel(
      # numericInput("numeric", "How many random numbers", value=1000, min=1, max=1000, step=1),
      # sliderInput("sliderex", "min and max X values", -1, 1, value=c(-1,1), step=0.01),
      sliderInput("sliderex", "Eyes horizontal", 
                  min = -2, max = 2, value = 0, step= 0.05),
      sliderInput("sliderey", "Eyes vertical", 
                  min = -2, max = 2, value = 0, step= 0.05),
      sliderInput("slidermx", "Mouth horizontal", 
                  min = -2, max = 2, value = 0, step= 0.05),
      sliderInput("slidermy", "Mouth vertical", 
                  min = -2, max = 2, value = 0, step= 0.05)
      # sliderInput("sliderey", "min and max X values", -2, 2, value=c(-1,1), step=0.01)),
    # checkboxInput("show_xlab", "Show/hide X", value=TRUE),
    # checkboxInput("show_ylab", "Show/hide Y", value=TRUE),
    # checkboxInput("show_title", "Show/hide title")
    ),
    
    mainPanel(
      h4("slide the sliders to make a smiley face!"),
      plotOutput("plot1")
    )
  )
))
