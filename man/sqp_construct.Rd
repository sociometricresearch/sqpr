% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sqp_construct.R
\name{sqp_construct}
\alias{sqp_construct}
\alias{sqp_construct_}
\title{Construct an SQP 3.0 tibble manually}
\usage{
sqp_construct(question_name, metrics, all_columns = FALSE)

sqp_construct_(question_name, metrics, all_columns = FALSE)
}
\arguments{
\item{question_name}{a character string that will be used as the question name}

\item{metrics}{a list containing new SQP metrics. Currently it only
supports quality, reliability and validity. Can also specify one of the metrics
and the remaining are set to NA by default}

\item{all_columns}{if \code{TRUE} will return all columns (quite a few) that can be
returned by the \code{\link{get_estimates}} function. See \code{\link{get_estimates}}
for the description of which variables would be created. If \code{FALSE} (default) it
will return only columns \code{question}, \code{quality}, \code{reliability} and \code{validity}.}
}
\value{
a \code{\link[tibble]{tibble}} of one row with the supplied metrics. It also has
class \code{sqp} for further manipulations within the \code{sqpr} package.
}
\description{
\code{sqp_construct} is designed to create SQP tibbles
by manually inserting new metrics such as quality or validity.
}
\details{
\code{sqp_construct_} is useful if you're interested in programming
with \code{sqpr} rather than using it interactively. If you want to use
\code{sqp_construct} inside a function, use the equivalent \code{sqp_construct_}
which uses standard evaluation.
}
\examples{

sqp_construct(new_question, list(quality = 0.3))

sqp_construct(new_question, list(quality = 0.3, validity = 0.2))

## Note that specifying a column which is not availabe in SQP 3.0 data
## will throw an error

\dontrun{
sqp_construct(new_question, list(random_col = 0.3, validity = 0.2))
# Error: One or more of the specified metrics don't match the SQP column names
}


}
