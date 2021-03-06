% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotWSB.R
\name{plotWSB}
\alias{plotWSB}
\title{Basic plot of WSB based on huc}
\usage{
plotWSB(sites, col = "#A8A8A850", mapRange = NA)
}
\arguments{
\item{sites}{character vector of site ids}

\item{col}{for basin fill}

\item{mapRange}{vector of map limits (min long, max long, min lat, max lat)}
}
\description{
Basic plot
}
\examples{
sites <- c("01137500","01491000", "01573000", "01576000","06485500")
path <- system.file("extdata", package="hydroMap")
siteInfo <- readRDS(file.path(path,"siteInfo.rds"))
png("test.png",width=11,height=8,units="in",res=600,pointsize=4)
plotWSB(sites)
points(siteInfo$dec_long_va, siteInfo$dec_lat_va, pch=20, col="red", cex=3)
dev.off()

plotWSB(sites[4], mapRange=c(-80,-74, 38, 46))
points(siteInfo$dec_long_va[4], siteInfo$dec_lat_va[4], pch=20, col="red", cex=1)
}

