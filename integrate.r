#######################################################################
#                                                                     #
#                                                                     #
#         Exoport and Import Dashboard                                #
#                                                                     #
#                                                                     #
#######################################################################

## --- Shiny app deployment ---------------

###########
## shiny ##
###########
library(shiny)
library(rsconnect)
library(packrat)
options(browser = "C:/Program Files (x86)/Google/Chrome/Application/chrome.exe")

## Relative path to the shiny app directory
shinydir = "shiny"

## If deploysuffix = NULL, shiny app is not deployed
deploysuffix = "test"
# deploysuffix = "prod"
# deploysuffix = NULL

## ----- test locally ------
runApp('shiny')

### -------- deploy ---------
deployApp(appDir = shinydir,
          appName = paste0("trade_intelligence_", deploysuffix),
          account = "XXXXXX")

