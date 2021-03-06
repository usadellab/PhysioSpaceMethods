% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WilcoxonTestWrapper.R
\name{wilTestWrapper}
\alias{wilTestWrapper}
\title{Wilcoxon Rank Sum testing Between Plus and Minus Genes}
\usage{
wilTestWrapper(ReferencesJ, iplus, iminus, STATICResponse)
}
\arguments{
\item{ReferencesJ}{Vector of gene expressions to do statistical test on.}

\item{iplus}{Index of first group of genes for statistical testing.}

\item{iminus}{Index of first group of genes for statistical testing.}

\item{STATICResponse}{Same STATICResponse as in calculatePhysioMap. Check calculatePhysioMap's help for more info.}
}
\value{
Log2 signed p value of Rank sum test if STATICResponse==FALSE, Rank sum statisitic normalized between -1 and 1
if STATICResponse==TRUE.
}
\description{
wilTestWrapper is an internal function used by calculatePhysioMap that does rank sum test
(equivalent to Mann-Whitney test) between iplus and iminus indexed genes in ReferencesJ.
}
\examples{
SimulatedReferenceSpace <- matrix(rnorm(n = 100000, mean = 0, sd = 100),ncol = 10, dimnames = list(1:10000,11:20))
wilTestWrapper(ReferencesJ = SimulatedReferenceSpace[,9], iplus = sample(1:nrow(SimulatedReferenceSpace), size = nrow(SimulatedReferenceSpace)/20),
iminus = sample(1:nrow(SimulatedReferenceSpace), size = nrow(SimulatedReferenceSpace)/20), STATICResponse = FALSE)

}
