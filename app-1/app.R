library("shiny")
# Define UI for app that draws a histogram ----
ui <- fluidPage(
    titlePanel("Title"),

    sidebarLayout(
        sidebarPanel(
            sliderInput("num",
                        label = "Choose a number",
                        min = 0,
                        max = 100,
                        value = 50)
        ),
        mainPanel("Main",
                  htmlOutput("nice")
                  )
    )
)

# Define server logic required to draw a histogram ----
server <- function(input, output) {
    output$nice <- renderUI({
        if (input$num == 69) {
            h1("nice")
        } else {
            p("eh")
        }
    })
}

shinyApp(ui = ui, server = server)
