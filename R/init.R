## testFun
#' A function that install all the librarys
#'
#' This function allows you prepare the librarys
#' @param
#' @keywords
#' @export
#' @examples
#' docker_init()

my_ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      textInput(inputId = "names", label = "Baby name(s)"),
      selectInput(inputId = "sex", "Sex", c("Male" = "M", "Female" = "F")),
      checkboxInput("number", "Plot number instead of proportion", F),
      sliderInput(inputId = "year", label = "Year range", val = c(1880, 2014), min = 1880, max = 2014)
    ),

    mainPanel(
      textOutput("my_text")
    )
  )
)

my_server <- function(input, output){
  output$my_text <- renderText(input$sex)
}

run <- function(){
  library('shiny')
  shinyApp(ui = my_ui, server = my_server)
}
