## ----knitr-mechanics, include = F---------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----pre-setup, echo = F, message = F-----------------------------------------
# install.packages("devtools")
# devtools::install_github("NCEAS/scicomptools")

## ----setup--------------------------------------------------------------------
library(scicomptools)

## ----stat_extract-------------------------------------------------------------
# Fit models of several accepted types
## Student's t-Test
mod_t <- t.test(x = 1:10, y = 7:20)

## Nonlinear Least Squares
mod_nls <- fm1DNase1 <- nls(density ~ SSlogis(log(conc), Asym, xmid, scal), data = DNase)

# Extract the relevant information
## t-Test
scicomptools::stat_extract(mod_fit = mod_t)

## NLS
scicomptools::stat_extract(mod_fit = mod_nls)

## ----drive_toc, eval = F------------------------------------------------------
#  scicomptools::drive_toc(url = googledrive::as_id("https://drive.google.com/drive/u/0/folders/folder-specific-characters"),
#                          ignore_names = c("Archive", "Deprecated", "Backups"),
#                          quiet = FALSE)

## ----read_xl_sheets-----------------------------------------------------------
# Read in sheets
sheet_list <- scicomptools::read_xl_sheets(file_name = system.file("extdata", "faux_data.xlsx", 
                                                     package = "scicomptools"))

# Show structure
dplyr::glimpse(sheet_list)

## ----read_xl_format-----------------------------------------------------------
# Read in *format of* sheets
form_list <- scicomptools::read_xl_format(file_name = system.file("extdata", "faux_data.xlsx", 
                                                     package = "scicomptools"))

# Show structure of that
dplyr::glimpse(form_list)

## ----wd_loc, eval = F---------------------------------------------------------
#  scicomptools::wd_loc(local = TRUE,
#                       local_path = getwd(),
#                       remote_path = file.path("path on server"))

## ----wd_loc message, echo = F-------------------------------------------------
message("/Users/.../scicomptools/vignettes")

## ----token_check, eval = F----------------------------------------------------
#  scicomptools::token_check(api = "github", secret = TRUE)

