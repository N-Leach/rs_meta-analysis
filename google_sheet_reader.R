# Load used packages
library(googlesheets4)
library(gargle)

# Get Google Drive authorization token from the GitHub secrets vault
#gs4_auth(path = Sys.getenv("GOOGLE_SERVICE_ACCOUNT_KEY"))
#gs4_auth(path = '_google_cred/re-meta-analysis-6db69afa8c71.json')

# Write the content of the environment variable to a temporary file
temp_json <- tempfile(fileext = ".json")
writeLines(Sys.getenv("GOOGLE_SERVICE_ACCOUNT_KEY"), temp_json)

# Use the temporary file for authentication
gs4_auth(path = temp_json)

# Read data from Google Sheet
sheet_url <- "https://docs.google.com/spreadsheets/d/1weav3qdydHXLBYVfejVZH2wwSYKBZP9Xjb2y0Iw_q5Q/edit?gid=1068904194#gid=1068904194"
data <- read_sheet(sheet_url)

