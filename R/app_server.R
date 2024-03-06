#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  dados_pls <- read.csv2(
    here::here("inst/dados_pls.csv")
  )

  output$grafico <- renderPlot({
   plot(dados_pls$ca)
  })

}
