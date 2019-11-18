library(miniUI)
library(shiny)
library(rio)
library(data.table)
library(arrow)
options(shiny.maxRequestSize = 15000*1024^2)

# Define UI for application that draws a histogram
GetFile<-function(){
    ui <- miniPage(
    
        # Application title
        gadgetTitleBar("Please choose file"),
    
        # Sidebar with a slider input for number of bins 
        miniContentPanel(
            fileInput('FilePath', 'Please choose file to be imported:'),
            radioButtons("IntoType", "Import Into:",
                         c("Just return the file path" = "path",
                           "R Data Frame" = "RdataFrame",
                           "Data.Table (only .csv)" = "DataTable",
                           "Arrow (only .csv)" = "arrow"))
        )

    )
    
    # Define server logic required to draw a histogram
    server <- function(input, output) {
        observeEvent(input$done,{ 
            switch(input$IntoType,
                   "path"={Temp <- input$FilePath$datapath},
                   "RdataFrame"={Temp <- import(input$FilePath$datapath)},
                   "DataTable"={Temp <- fread(input$FilePath$datapath)},
                   "arrow" ={Temp<-read_csv_arrow(input$FilePath$datapath)}
            )
            stopApp(Temp)
        })
        observeEvent(input$cancel,{
            stopApp()
            #stopApp(stop("No file name provided.", call. = FALSE))
        })
    }

    # Run the application 
    runGadget(ui, server, viewer = dialogViewer("Get File Import", height = 110))
}

DFName<-GetFile()
