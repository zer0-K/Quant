
quant_dir <- Sys.getenv("QUANT_PATH")
source(file.path(quant_dir, "Dashboards", "Utils", "PlotLog", "get_plot_logs.R"), local = TRUE) # nolint: line_length_linter.


server <- function(input, output, session) {
 
  ########## File system

  ##### data

  plotlog_data <- reactiveValues()


  plotlog_data$plotlog_dir_selected <- ""
  plotlog_data$plotlog_file_selected <- ""
  plotlog_data$plotlog_dirs <- c("")
  plotlog_data$plotlog_files <- c("")

  plotlog_data$raw_plotlog_data <- ""



  ##### log getters

  get_plotlog_dirs <- reactive({
    plotlog_dirs <- list_plotlog_dirs(base_folder = quant_dir)
    return(plotlog_dirs)
  })

  get_plotlog_files <- reactive({

    if(is.null(plotlog_data$plotlog_dir_selected) ||
                plotlog_data$plotlog_dir_selected == "") {
      return("")
    }

    plotlog_dir <- file.path(quant_dir, plotlog_data$plotlog_dir_selected)
    plotlog_files <- list_plot_logs(plotlog_dir)

    return(plotlog_files)
  })



  ##### events

  observeEvent(
    input$button_refresh_plotlog_dirs, {

      plotlog_data$plotlog_dirs <- get_plotlog_dirs()

      updateSelectizeInput(session,
        "plotlog_dirs_selectizeinput",
        choices = plotlog_data$plotlog_dirs
      )
    }
  )

  observeEvent(
    input$plotlog_dirs_selectizeinput, {

      plotlog_data$plotlog_dir_selected <- input$plotlog_dirs_selectizeinput
      plotlog_data$plotlog_files <- get_plotlog_files()

      updateSelectizeInput(session,
        "plotlog_files_selectizeinput",
        choices = plotlog_data$plotlog_files
      )
    }
  )

  observeEvent(
    input$plotlog_files_selectizeinput, {

      plotlog_data$plotlog_file_selected <- input$plotlog_files_selectizeinput

    }
  )

  observeEvent(
    input$button_load_plotlog, {

      plotlog <- file.path(quant_dir,
                           plotlog_data$plotlog_dir_selected,
                           plotlog_data$plotlog_file_selected)
      data <- read_plot_log(plotlog)

      plotlog_data$raw_plotlog_data <- data

    }
  )


  ##### UI outputs

  output$selected_file <- renderText({ plotlog_data$plotlog_file_selected })
  output$raw_plotlog_data <- renderPrint({ plotlog_data$raw_plotlog_data })


  output$distPlot <- renderPlot({

    x    <- faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    hist(x, breaks = bins, col = "#007bc2", border = "white",
         xlab = "Waiting time to next eruption (in mins)",
         main = "Histogram of waiting times")

  })

}