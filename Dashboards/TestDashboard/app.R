library(shiny)

app_dir <- getwd()
source(paste0(app_dir, "/source/UI.R"), local = TRUE)
source(paste0(app_dir, "/source/server.R"), local = TRUE)

shinyApp(ui = ui, server = server)