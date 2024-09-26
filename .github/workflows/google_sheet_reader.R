library(googlesheets4)
library(gargle)

# Authenticate using the service account
json_file <- Sys.getenv("GOOGLE_SERVICE_ACCOUNT_KEY")

# Write the service account credentials to a temporary file
key_path <- tempfile("key", fileext = ".json")
writeLines(json_file, key_path)

# Authenticate with the service account key
gs4_auth(path = key_path)

# Read from or write to your Google Sheet
sheet_url <- "https://docs.google.com/spreadsheets/d/your-google-sheet-id/edit"
data <- read_sheet(sheet_url)

