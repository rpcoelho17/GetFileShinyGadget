library(miniUI)
library(shiny)
library(rio)

# Define UI for application that draws a histogram
GetFile<-function(){
    ui <- miniPage(
    
        # Application title
        gadgetTitleBar("Please choose file"),
    
        # Sidebar with a slider input for number of bins 
        miniContentPanel(
            fileInput('FilePath', 'Please choose file to be imported:')
        )

    )
    
    # Define server logic required to draw a histogram
    server <- function(input, output) {
        observeEvent(input$done, {
            Temp<-import(input$FilePath$datapath)
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
DataFrameName<-GetFile()
