library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Child's Height Prediction"),
    
    sidebarPanel(
      p("Steps: "),
      p("1. Enter parents' height"),
      p("2. Press \"Predict\" button."),
      p("3. The prediction will be shown on the main panel."),
      
      numericInput("fatherHeight", "Father's height (cm): ", 170, min = 0, 
                   max = 300, step = 1),
      numericInput("motherHeight", "Mother's height (cm): ", 170, min = 0, 
                   max = 300, step = 1),
      submitButton("Predict")
    ),
    
    mainPanel(
      h3("Results of prediction"),
           
      h4("Midparent height (cm): "),
      verbatimTextOutput("midparentHeight"),
      
      h4("The prediction of your child's height (cm): "),
      verbatimTextOutput("prediction")
    )
  )
)