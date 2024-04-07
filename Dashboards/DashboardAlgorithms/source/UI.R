ui <- fluidPage(

  titlePanel("Algo analysis"),

  sidebarLayout(

    sidebarPanel(
      width = 3,
      actionButton("button_refresh_plotlog_dirs",
        "refresh plotlog folders"
      ),
      br(),
      br(),
      selectizeInput("plotlog_dirs_selectizeinput",
        "Plotlog folders",
        c("")
      ),
      selectizeInput("plotlog_files_selectizeinput",
        "Plot logs for selected folder",
        c("")
      )
    ),

    mainPanel(
      width = 9,
      tabsetPanel(
        tabPanel("Summary",
          "This dashboard displays the results of the algorithms."
        ),
        tabPanel("Display",
          "Display plot log. Selected file :",
          textOutput("selected_file"),
          actionButton("button_load_plotlog",
            "Load plot log"
          ),
          tabsetPanel(
            tabPanel("Raw data",
              "Raw plot log data",
              verbatimTextOutput("raw_plotlog_data")
            )
          )
        )
      )
    )

  )
)