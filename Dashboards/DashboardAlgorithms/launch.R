library(shiny)

quant_dir <- Sys.getenv("QUANT_PATH")
app_dir <- file.path(quant_dir, "Dashboards", "DashboardAlgorithms")

runApp(app_dir, host = "127.0.0.1", port = 3300, launch.browser = FALSE)