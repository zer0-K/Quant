
quant_dir <- Sys.getenv("QUANT_PATH")
source(file.path(quant_dir, "Dashboards", "Utils", "PlotLog", "get_plot_logs.R"), local = TRUE) # nolint: line_length_linter.
source(file.path(quant_dir, "Dashboards", "Utils", "PlotLog", "plot_log_data_step.R"), local = TRUE) # nolint: line_length_linter.


server <- function(input, output, session) {

  ############### data
  ############### data
  ############### data
  ############### data
  ############### data


  ##### plotlog data

  plotlog_data <- shiny::reactiveValues()


  plotlog_data$plotlog_dir_selected <- ""
  plotlog_data$plotlog_file_selected <- ""
  plotlog_data$plotlog_dirs <- c("")
  plotlog_data$plotlog_files <- c("")

  plotlog_data$raw_plotlog_data <- NULL

  plotlog_data$curr_plot_data <- NULL
  plotlog_data$curr_plot_data_coords <- list()
  plotlog_data$step_deepness <- 0
  plotlog_data$step <- 0


  ############### functions on data
  ############### functions on data
  ############### functions on data
  ############### functions on data
  ############### functions on data

  update_plot_data <- function() {

    plotlog_data$curr_plot_data <- get_plot_data_at_coords(
      plotlog_data$raw_plotlog_data,
      coords = plotlog_data$curr_plot_data_coords
    )

  }


  ##### log getters

  get_plotlog_dirs <- shiny::reactive({
    plotlog_dirs <- list_plotlog_dirs(base_folder = quant_dir)
    return(plotlog_dirs)
  })

  get_plotlog_files <- shiny::reactive({

    if(is.null(plotlog_data$plotlog_dir_selected) ||
         plotlog_data$plotlog_dir_selected == "") {
      return("")
    }

    plotlog_dir <- file.path(quant_dir, plotlog_data$plotlog_dir_selected)
    plotlog_files <- list_plot_logs(plotlog_dir)

    return(plotlog_files)
  })


  ############### events
  ############### events
  ############### events
  ############### events
  ############### events


  ##### file paths management

  shiny::observeEvent(input$button_refresh_plotlog_dirs, {

    plotlog_data$plotlog_dirs <- get_plotlog_dirs()

    shiny::updateSelectizeInput(session,
      "plotlog_dirs_selectizeinput",
      choices = plotlog_data$plotlog_dirs
    )

  })

  shiny::observeEvent(input$plotlog_dirs_selectizeinput, {

    plotlog_data$plotlog_dir_selected <- input$plotlog_dirs_selectizeinput
    plotlog_data$plotlog_files <- get_plotlog_files()

    shiny::updateSelectizeInput(session,
      "plotlog_files_selectizeinput",
      choices = plotlog_data$plotlog_files
    )

  })

  shiny::observeEvent(input$plotlog_files_selectizeinput, {

    plotlog_data$plotlog_file_selected <- input$plotlog_files_selectizeinput

  })

  shiny::observeEvent(input$button_load_plotlog, {

    plotlog <- file.path(quant_dir,
                         plotlog_data$plotlog_dir_selected,
                         plotlog_data$plotlog_file_selected)
    data <- read_plot_log(plotlog)

    plotlog_data$raw_plotlog_data <- data
    plotlog_data$curr_plot_data_coords <- list(0)

    update_plot_data()

  })


  ##### operations on plots

  shiny::observeEvent(input$button_decrement_step_deepness, {

    step_deepness <- decrement_step_deepness(plotlog_data$step_deepness)

    if(plotlog_data$step_deepness != step_deepness) {

      index_last <- length(plotlog_data$curr_plot_data_coords)
      plotlog_data$curr_plot_data_coords <- plotlog_data$curr_plot_data_coords[-index_last] # nolint: line_length_linter.
      update_plot_data()

    }

  })

  shiny::observeEvent(input$button_increment_step_deepness, {

    step_deepness <- increment_step_deepness(
      plot_data_object = plotlog_data$raw_plotlog_data,
      step = plotlog_data$step,
      step_deepness = plotlog_data$step_deepness
    )

    if(plotlog_data$step_deepness != step_deepness) {

      plotlog_data$curr_plot_data_coords <- append(plotlog_data$curr_plot_data_coords, 0) # nolint: line_length_linter.
      update_plot_data()

    }

  })

  shiny::observeEvent(input$button_decrement_step, {

    step <- decrement_step(plotlog_data$step)

    if(plotlog_data$step != step) {

      plotlog_data$curr_plot_data_coords[length(plotlog_data$curr_plot_data_coords)] <- step # nolint: line_length_linter.
      update_plot_data()

    }


  })

  shiny::observeEvent(input$button_increment_step, {

    step <- increment_step(
      plot_data_object = plotlog_data$raw_plotlog_data,
      step = plotlog_data$step
    )

    if(plotlog_data$step != step) {

      plotlog_data$curr_plot_data_coords[length(plotlog_data$curr_plot_data_coords)] <- step # nolint: line_length_linter.
      update_plot_data()

    }

  })


  ############### UI outputs
  ############### UI outputs
  ############### UI outputs
  ############### UI outputs
  ############### UI outputs


  ##### selected plotlog data

  output$selected_file <- shiny::renderText({
    plotlog_data$plotlog_file_selected
  })
  output$raw_plotlog_data <- shiny::renderPrint({
    plotlog_data$raw_plotlog_data
  })

  ##### operations on plots

  output$text_step_deepness <- shiny::renderText({
    paste("Step deepness : ", plotlog_data$step_deepness, sep = " ")
  })
  output$text_step <- shiny::renderText({
    paste("Step : ", plotlog_data$step, sep = " ")
  })



  output$distPlot <- shiny::renderPlot({

    x    <- faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    hist(x, breaks = bins, col = "#007bc2", border = "white",
         xlab = "Waiting time to next eruption (in mins)",
         main = "Histogram of waiting times")

  })

}