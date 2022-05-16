#' Launch test shiny Apps
#'
#' @param name The name of the app to run
#' @param ... arguments to pass to shiny::runApp
#'
#' @export
#'
#' @examples
#' \dontrun{
#' library(usarrestApp)
#'
#' # running an app
#'   runDataApp()
#'}
#'
runDataApp <- function(name = "usarrest", ...) {
  # find and launch the app
  appDir <- system.file(paste0("apps/", name), package = "usarrestApp")
  if (appDir == "") stop("The shiny app ", name, " does not exist.")
  shiny::runApp(appDir, display.mode = "normal", ...)
}
