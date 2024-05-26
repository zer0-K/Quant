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
          br(),
          "This dashboard displays the results of the algorithms."
        ),
        tabPanel("Display",
          br(),
          "Load plog data before all",
          br(),
          fluidRow(
            column(2,
              "Display plot log. Selected file :"
            ),
            column(2,
              textOutput("selected_file")
            ),
            column(2,
              actionButton("button_load_plotlog",
                "Load plot log"
              )
            )
          ),
          tabsetPanel(
            tabPanel("Raw data",
              br(),
              "Raw plot log data",
              br(),
              verbatimTextOutput("raw_plotlog_data")
            ),
            tabPanel("Manual algo manip",
              br(),
              "Visualize algo execution manually",
              br(),
              fluidRow(
                column(2,
                  textOutput("text_step_deepness")
                ),
                column(2,
                  actionButton("button_decrement_step_deepness",
                    "-"
                  )
                ),
                column(2,
                  actionButton("button_increment_step_deepness",
                    "+"
                  )
                )
              ),
              br(),
              fluidRow(
                column(2,
                  textOutput("text_step")
                ),
                column(2,
                  actionButton("button_decrement_step",
                    "-"
                  )
                ),
                column(2,
                  actionButton("button_increment_step",
                    "+"
                  )
                )
              )
            )
          )
        )
      )
    )

  )
)