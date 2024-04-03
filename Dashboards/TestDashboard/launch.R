library(shiny)

project_dir <- getwd()
app_dir <- paste0(project_dir, "/Dashboards/TestDashboard")

runApp(app_dir, host = "127.0.0.1", port = 3300, launch.browser = FALSE)