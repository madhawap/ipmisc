% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/long_to_wide_converter.R
\name{long_to_wide_converter}
\alias{long_to_wide_converter}
\title{Converts long-format dataframe to wide-format dataframe}
\usage{
long_to_wide_converter(data, x, y, paired = TRUE, ...)
}
\arguments{
\item{data}{A dataframe (or a tibble) from which variables specified are to
be taken. A matrix or tables will \strong{not} be accepted.}

\item{x}{The grouping variable from the dataframe \code{data}.}

\item{y}{The response (a.k.a. outcome or dependent) variable from the
dataframe \code{data}.}

\item{paired}{Logical that decides whether the experimental design is
repeated measures/within-subjects or between-subjects. The default is
\code{FALSE}.}

\item{...}{Currently ignored.}
}
\value{
A dataframe in the wide (or Cartesian) format.
}
\description{
This conversion is helpful mostly for repeated measures design.
}
\examples{
\donttest{
long_to_wide_converter(
  data = iris_long,
  x = condition,
  y = value,
  paired = TRUE
)
}
}
\author{
\href{https://github.com/IndrajeetPatil}{Indrajeet Patil}
}
