# GetFileShinyGadget
Shiny Gadget that uses the OS File Dialog to load a file into an R Data Frame.

Ever hated typing those long file path names when loading a data set? This app solves this by using your operating systems File Dialog to browse your computer directory and select the location of the file.

The gadget uses the "import" function from the rio package so it can load *.csv, *.xls, *.rds (R serialized), *.sav (SPSS).

## Usage:
DataFrameName <- GetFile()

The GetFile function already returns an R dataframe, so load it directly into the variable name you'd like to use.

Future versions will support data.table and Apache arrow. 

