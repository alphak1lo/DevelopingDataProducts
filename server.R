library(shiny)

shinyServer(function(input, output)
{
  #define plot1
  output$plot1 <- renderPlot({#reactive expressions enclosed in {}
    #eyes
    eyes_x <- c(-1,-.5)
    eyes_y <- c(1.5,1.5)
    eyesX <- input$sliderex[1]
    eyesY <- input$sliderey[1]
    
    #mouth
    mouth_x <- c(1.35,1.4,1.5,1.6,1.7,1.8,1.85)
    mouth_y <- c(-1.2,-1.27,-1.32,-1.35,-1.32,-1.27,-1.2)
    mouthX <- input$slidermx[1]
    mouthY <- input$slidermy[1]
    
    
    #combined
    combined_x <- c(
      eyes_x + eyesX,
      mouth_x + mouthX)
    combined_y <- c(
      eyes_y + eyesY,
      mouth_y + mouthY)
    
    
    # #face
    # faceX <- input$sliderX[1]
    # faceY <- input$sliderY[1]
    
    #plot the above
    plot(combined_x, combined_y, asp=1, xlim=c(-2,2), ylim=c(-3,3), xlab="", ylab="")
    draw.circle(0, 0, 0.75, nv = 1000, border = NULL, col = NA, lty = 1, lwd = 1)
  })
})