# Requirement 6: Unzip and Display Employee Data
# Check your file path is correct

# Load required package to execute the script
if (!require("readr")) install.packages("readr", repos = "http://cran.us.r-project.org")
library(readr)

# Define zip file and extraction directory
# Add the directory file path
zip_file <- "Employee_Profile.zip"
extraction_dir <- "unzipped_data"

# Unzip the folder
unzip(zip_file, exdir = extraction_dir)

# Construct path to the CSV file
# Specify the file path
csv_path <- file.path(extraction_dir, "employee_details.csv")

# Read and display the data
if (file.exists(csv_path)) {
  employee_data <- read_csv(csv_path)
  print(employee_data)
} else {
  cat("Error: CSV file not found in the extracted folder.\n")
}
