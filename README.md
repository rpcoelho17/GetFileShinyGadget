# GetFileShinyGadget
Shiny Gadget that uses the OS File Dialog to load a file into an R Data Frame.

Ever hated typing those long file path names when loading a data set? This app solves this by using your operating systems File Dialog to browse your computer directory and select the location of the file.

The gadget uses the "import" function from the rio package so it can load *.csv, *.xls, *.rds (R serialized), *.sav (SPSS), *.mat, *.feather, *.dbf, *.csv.gz, *.fst and all of these other formats: https://www.rdocumentation.org/packages/rio/versions/0.5.16.

## Usage:
DataFrameName <- GetFile()

The GetFile function already returns an R dataframe, so load it directly into the variable name you'd like to use.

NOTE: When uploading large files, although the progress bar prints the message "file uploaded" pretty quickly, wait for the bar to stop blinking. If you press 'done' before the bar stops twirling you will get an error for trying to load the file into your variable before it is completely loaded into R.

