library(rjson)

list_plot_logs <- function(base_folder, extension = "", relative = TRUE) {

  plotlogs_folder_name <- "plotlogs"

  all_dirs <- list.dirs(base_folder, full.names = FALSE, recursive = FALSE)

  if(plotlogs_folder_name %in% all_dirs) {
    base_folder <- file.path(base_folder, plotlogs_folder_name)
  }

  logplot_files <- list.files(base_folder,
                              full.names = !relative,
                              recursive = FALSE)

  if(extension != "") {
    logplot_files <- logplot_files[grepl(extension, logplot_files, fixed = TRUE)]
  }

  return(logplot_files)
}

list_plotlog_dirs <- function(base_folder) {

  plotlogs_folder_name <- "plotlogs"

  all_dirs <- c()
  if (dir.exists(base_folder)) {

    all_dirs <- list.dirs(base_folder, full.names = FALSE, recursive = TRUE)
    all_dirs <- all_dirs[grepl(plotlogs_folder_name, all_dirs, fixed = TRUE)]

  } else {

    print(paste("Directory ", base_folder, " does not exist", sep = ""))

  }

  return(all_dirs)

}

read_plot_log <- function(plot_log) {

  data <- NULL

  if (file.exists(plot_log)) {

    data <- fromJSON(file = plot_log)

  } else {

    print(paste("File ", plot_log, " not found", sep = ""))

  }

  return(data)
}