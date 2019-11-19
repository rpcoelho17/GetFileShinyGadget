# GetFileShinyGadget
Shiny Gadget that uses the OS File Dialog to load a file into an R Data Frame.

Ever hated typing those long file path names when loading a data set? This app solves this by using your operating systems File Dialog to browse your computer directory and select the location of the file.

The gadget uses the "import" function from the rio package so it can load *.csv, *.xls, *.rds (R serialized), *.sav (SPSS), *.mat, *.feather, *.dbf, *.csv.gz, *.fst and all of these other formats: https://www.rdocumentation.org/packages/rio/versions/0.5.16.

Supports reding into R data frame, data.table and Apache Arrow.

## Usage:
DataFrameName <- GetFile()
The GetFile function already returns a dataframe, so load it directly into the variable name you'd like to use.
Choose in the dialog whether to load into R data frame, data.table or Arrow.

NOTE: When uploading large files, although the progress bar prints the message "file uploaded" pretty quickly, wait for the bar to stop blinking. If you press 'done' before the bar stops twirling you will get an error for trying to load the file into your variable before it is completely loaded into R.

## Installation:
You can install the addin by downloading the FileDialogs_0.1.0.tar.gz file and typing the following command substituting "D:/FILES/Code/R/GetFile" with the path of your file:

install.packages("D:/FILES/Code/R/GetFile/FileDialogs_0.1.0.tar.gz", repos = NULL, type = "source")
