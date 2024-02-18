# Function to add name and age to existing CSV file
welcome_dialog <- function() {
  # Define name and age input questions
  name <- readline("Hello World! Type your name: ")
  age <- as.integer(readline("How old are you? "))

  # Create a data frame with the name and age
  data <- data.frame(name = name, age = age)

  # Check if the file already exists
  if (file.exists("names.csv")) {
    # If the file exists, read the existing data
    existing_data <- read.csv("names.csv", stringsAsFactors = FALSE)
    
    # Append the new data to the existing data
    updated_data <- rbind(existing_data, data)
    
    # Write the updated data to the CSV file
    write.csv(updated_data, file = "names.csv", row.names = FALSE)
    
    greetings <- paste("Hi ", name, "! Your name and age have been added to names.csv.")
  } else {
    # If the file does not exist, create a new file
    write.csv(data, file = "names.csv", row.names = FALSE)
    
    greetings <- paste("Hi ", name, "! Your name and age have been written to names.csv.")
  }

  return(greetings)
}

# Call the function
res <- welcome_dialog()

# Print the result
print(res)
