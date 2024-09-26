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
sheet_url <- "https://docs.google.com/spreadsheets/d/1weav3qdydHXLBYVfejVZH2wwSYKBZP9Xjb2y0Iw_q5Q/edit?gid=1068904194#gid=1068904194"
data <- read_sheet(sheet_url)

