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
#'
#' # to get list of names of shiny apps
#'   runDataApp()
#' # this will give error with all possible
#' # shiny names contained in the package.
#'}
#'
runDataApp <- function(name = "usarrest", ...) {
  # find and launch the app
  appDir <- system.file(paste0("apps/", name), package = "usarrestApp")
  if (appDir == "") stop("The shiny app ", name, " does not exist.")
  shiny::runApp(appDir, display.mode = "normal", ...)
}
