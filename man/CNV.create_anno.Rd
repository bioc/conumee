% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotation.R
\name{CNV.create_anno}
\alias{CNV.create_anno}
\title{CNV.create_anno}
\usage{
CNV.create_anno(bin_minprobes = 15, bin_minsize = 50000,
  bin_maxsize = 5000000, array_type = "450k", chrXY = FALSE,
  exclude_regions = NULL, detail_regions = NULL)
}
\arguments{
\item{bin_minprobes}{numeric. Minimum number of probes per bin. Bins are interatively merged with neighboring bin until minimum number is reached.}

\item{bin_minsize}{numeric. Minimum size of a bin.}

\item{bin_maxsize}{numeric. Maximum size of a bin. Merged bins that are larger are filtered out.}

\item{array_type}{character. One of \code{450k}, \code{EPIC}, or \code{overlap}. Defaults to \code{450k}.}

\item{chrXY}{logical. Should chromosome X and Y be included in the analysis?}

\item{exclude_regions}{GRanges object or path to bed file containing genomic regions to be excluded.}

\item{detail_regions}{GRanges object or path to bed file containing genomic regions to be examined in detail.}
}
\value{
\code{CNV.anno} object.
}
\description{
Create annotations for CNV analysis.
}
\details{
This function collects all annotations required for CNV analysis using Illumina 450k or EPIC arrays. The output \code{CNV.anno} object is not editable. Rerun \code{CNV.create_anno} to change parameters.
}
\examples{
# create annotation object
anno <- CNV.create_anno()
anno
}
\author{
Volker Hovestadt \email{conumee@hovestadt.bio}
}

