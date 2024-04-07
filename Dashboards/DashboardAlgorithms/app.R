library(shiny)

quant_dir <- Sys.getenv("QUANT_PATH")
app_dir <- file.path(quant_dir, "Dashboards", "DashboardAlgorithms")

source(file.path(app_dir, "source", "UI.R"), local = TRUE)
source(file.path(app_dir, "source", "server.R"), local = TRUE)

shinyApp(ui = ui, server = server)