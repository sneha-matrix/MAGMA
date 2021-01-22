#' Download a meta data file from TCGA 
#' 
#' This is a wrapper for \code{\link{download.file}} from TCGA and load 
#' and filter data
#' 
#' @param url The URL to download.
#' @param file name to file to be stored 
#' @param sheet  sheet name from XL default 1 to get data from 1st sheet
#' @param colName Column name on which filter need to be applied
#' @param condition for subsetting data frame
#' @export
#' @examples
#' \dontrun{
#' 
#' df <- loadTCGA(url = 'https://api.gdc.cancer.gov/data/1b5f413e-a8d1-4d10-92eb-7c4ae739ed81', 
#' file = 'out.xlsx', colName="tumor_status"  , condition = "WITH TUMOR")
#' }
#'
#' @export


loadTCGA <- function(url, file, sheet=1, colName, condition , ...) {
  
  download.file(url = url , destfile = file , mode="wb")
}

