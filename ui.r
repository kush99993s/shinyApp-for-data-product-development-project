library(shiny)

# Define the overall UI
shinyUI(
    
    # Use a fluid Bootstrap layout
    fluidPage(
        
        # Give the page a title
        titlePanel("Find car with Your Specification with mpg "),
        
        # Generate a row with a sidebar
        sidebarLayout(
            
            # Define the sidebar with one input
            sidebarPanel(
                selectInput("cylinder", "Number of Cylinder:",
                            choices=c(3, 4, 5, 6,8)),
                numericInput(inputId="horsepower", label="HorsePower:",value=100, min = 46,max = 230),
                numericInput(inputId="weight", label="Weight:", value=4000, min=1600, max = 5140),
                selectInput("year", "Model Year:", choices=c(70,71,72,73,74,75,76,77,78
                                                             ,79,80,81)),
                hr(),
                submitButton("Submit"),                
                helpText("Data from archive.ics.uci.edu data set name auto-mpg")),
            
            # Create a spot for the barplot
            mainPanel(
               
                h4("Your Selections of cylinder"),
                verbatimTextOutput("selection1"),
                h4("Your Selections of horsepower"),
                verbatimTextOutput("selection2"),
                h4("Your Selections of weight"),
                verbatimTextOutput("selection3"),
                h4("Your Selections of car year"),
                verbatimTextOutput("selection4"),
                h3("Your Car's MPG is "),
                verbatimTextOutput("selection5"),
                h4("If you want to closest car to your predicted MPG it will be following car"),
                verbatimTextOutput("selection6"),
                h4("If you want to closest car to your selection, it will be following car"),
                verbatimTextOutput("selection7")
                )
            )
        )
    )
