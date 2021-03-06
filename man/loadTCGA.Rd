% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/format.R
\name{loadTCGA}
\alias{loadTCGA}
\title{Download a meta data file from TCGA}
\usage{
loadTCGA(url, file, sheet = 1, colName, condition, ...)
}
\arguments{
\item{url}{The URL to download.}

\item{file}{name to file to be stored}

\item{sheet}{sheet name from XL default 1 to get data from 1st sheet}

\item{colName}{Column name on which filter need to be applied}

\item{condition}{for subsetting data frame}
}
\description{
This is a wrapper for \code{\link{download.file}} from TCGA and load 
and filter data
}
\examples{
\dontrun{

df <- loadTCGA(url = 'https://api.gdc.cancer.gov/data/1b5f413e-a8d1-4d10-92eb-7c4ae739ed81', 
file = 'out.xlsx', colName="tumor_status"  , condition = "WITH TUMOR")
}

}
