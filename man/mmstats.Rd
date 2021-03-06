% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mmstats.R
\name{mmstats}
\alias{mmstats}
\title{Print basic statistics of metagenome data}
\usage{
mmstats(mm)
}
\arguments{
\item{mm}{(\emph{required}) A dataframe loaded with \code{\link{mmload}}.}
}
\value{
A dataframe with the calculated stats.
}
\description{
Calculates some basic statistics like the N50 length, minimum-, mean-, and maximum scaffold lengths, mean GC content, information about essential genes, and more...
}
\details{
The returned stats are calculated as follows:
\itemize{
   \item Scaffolds: The number of different scaffolds in the assembly.
   \item N50: The shortest sequence length at 50% of the assembly.
   \item Length.total: The total size of the assembly.
   \item Length.max: The size of the largest scaffold in the assembly.
   \item Length.mean: The average scaffold size in the assembly.
   \item Length.min: The size of the smallest scaffold in the assembly.
   \item weighted_GC_mean: The average GC content in the assembly, weighted by scaffold sizes.
   \item cov_*: The average coverage of each coverage variable in mm, weighted by scaffold sizes. (Only columns starting with "cov_" will be shown)
   \item Ess.genes.total: The total number of essential genes, if any have been loaded. 
   \item Ess.genes.unique: The number of unique essential genes, if any have been loaded. 
}
}
\examples{
library(mmgenome2)
data(mmgenome2)
mmgenome2
mmstats(mmgenome2)

}
\author{
Kasper Skytte Andersen \email{ksa@bio.aau.dk}

Soren M. Karst \email{smk@bio.aau.dk}

Mads Albertsen \email{MadsAlbertsen85@gmail.com}
}
