#' @title Setting Working Directory in RStudio to where the R Script is.
#' @name set_cwd
#' @description This function will change the current working directory to
#'   whichever directory the R script you are currently working on is located.
#'   This preempts the trouble of setting the working directory manually.
#' @return Path to changed working directory.
#'
#' @note This function will work **only with RStudio IDE**. Reference:
#'   https://eranraviv.com/r-tips-and-tricks-working-directory/
#'
#' @importFrom rstudioapi getActiveDocumentContext
#'
#' @export

# function body
set_cwd <- function() {
  # set working directory to that path
  setwd(dir = dirname(path = rstudioapi::getActiveDocumentContext()$path))

  # print the current directory to confirm you are in the right directory
  print(x = paste("setting current working directory to: ", getwd(), sep = ""))
}
