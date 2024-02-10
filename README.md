# r-demo
R language messing around


## R String Operations module
Directory containing string operations modules.

### MODULE: WelcomeDialog

The R CSV File Management Module provides a simple and reusable function for adding names to an existing or new CSV file. This module is designed to handle the creation of a CSV file, or append new entries to an existing file, based on user input.

### Functionality

- **open_dialog:** Prompts the user to enter their name, creates a data frame, and adds the name to an existing or new CSV file.

### Usage

```R
# Load the module
source("StringOperations/WelcomeDialog.r")

# Call the function with the default filename "names.csv"
result <- open_dialog()

# Optionally, specify a custom filename
result_custom <- open_dialog("custom_names.csv")
