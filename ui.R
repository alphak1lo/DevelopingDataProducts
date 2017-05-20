###smiley facer maker
library(shiny)
library(plotrix)

shinyUI(fluidPage(
  titlePanel("Smiley facer maker"),
  sidebarLayout(
    
    sidebarPanel(
      sliderInput("sliderex", "Eyes horizontal", 
                  min = -2, max = 2, value = 0, step= 0.05),
      sliderInput("sliderey", "Eyes vertical", 
                  min = -2, max = 2, value = 0, step= 0.05),
      sliderInput("slidermx", "Mouth horizontal", 
                  min = -2, max = 2, value = 0, step= 0.05),
      sliderInput("slidermy", "Mouth vertical", 
                  min = -2, max = 2, value = 0, step= 0.05)
    ),
    
    mainPanel(
      h4("slide the sliders to make a smiley face!"),
      plotOutput("plot1")
    )
  )
))
