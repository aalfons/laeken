% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paretoTail.R
\name{paretoTail}
\alias{paretoTail}
\alias{print.paretoTail}
\title{Pareto tail modeling for income distributions}
\usage{
paretoTail(
  x,
  k = NULL,
  x0 = NULL,
  method = "thetaPDC",
  groups = NULL,
  w = NULL,
  alpha = 0.01,
  ...
)
}
\arguments{
\item{x}{a numeric vector.}

\item{k}{the number of observations in the upper tail to which the Pareto
distribution is fitted.}

\item{x0}{the threshold (scale parameter) above which the Pareto distribution
is fitted.}

\item{method}{either a function or a character string specifying the function
to be used to estimate the shape parameter of the Pareto distibution, such as
\code{\link{thetaPDC}} (the default).  See \dQuote{Details} for requirements
for such a function and \dQuote{See also} for available functions.}

\item{groups}{an optional vector or factor specifying groups of elements of
\code{x} (e.g., households).  If supplied, each group of observations is
expected to have the same value in \code{x} (e.g., household income).  Only
the values of every first group member to appear are used for fitting the
Pareto distribution.}

\item{w}{an optional numeric vector giving sample weights.}

\item{alpha}{numeric; values above the theoretical \eqn{1 - }\code{alpha}
quantile of the fitted Pareto distribution will be flagged as outliers for
further treatment with \code{\link{reweightOut}} or \code{\link{replaceOut}}.}

\item{\dots}{addtional arguments to be passed to the specified method.}
}
\value{
An object of class \code{"paretoTail"} with the following
components:
\item{x}{the supplied numeric vector.}
\item{k}{the number of observations in the upper tail to which the
Pareto distribution has been fitted.}
\item{groups}{if supplied, the vector or factor specifying groups of
elements.}
\item{w}{if supplied, the numeric vector of sample weights.}
\item{method}{the function used to estimate the shape parameter, or the
name of the function.}
\item{x0}{the scale parameter.}
\item{theta}{the estimated shape parameter.}
\item{tail}{if \code{groups} is not \code{NULL}, this gives the groups
with values larger than the threshold (scale parameter), otherwise the
indices of observations in the upper tail.}
\item{alpha}{the tuning parameter \code{alpha} used for flagging
outliers.}
\item{out}{if \code{groups} is not \code{NULL}, this gives the groups
that are flagged as outliers, otherwise the indices of the flagged
observations.}
}
\description{
Fit a Pareto distribution to the upper tail of income data.  Since a
theoretical distribution is used for the upper tail, this is a semiparametric
approach.
}
\details{
The arguments \code{k} and \code{x0} of course correspond with each other.
If \code{k} is supplied, the threshold \code{x0} is estimated with the \eqn{n
- k} largest value in \code{x}, where \eqn{n} is the number of observations.
On the other hand, if the threshold \code{x0} is supplied, \code{k} is given
by the number of observations in \code{x} larger than \code{x0}.  Therefore,
either \code{k} or \code{x0} needs to be supplied.  If both are supplied,
only \code{k} is used.

The function supplied to \code{method} should take a numeric vector (the
observations) as its first argument.  If \code{k} is supplied, it will be
passed on (in this case, the function is required to have an argument called
\code{k}).  Similarly, if the threshold \code{x0} is supplied, it will be
passed on (in this case, the function is required to have an argument called
\code{x0}).  As above, only \code{k} is passed on if both are supplied.  If
the function specified by \code{method} can handle sample weights, the
corresponding argument should be called \code{w}.  Additional arguments are
passed via the \dots{} argument.
}
\examples{
data(eusilc)


## gini coefficient without Pareto tail modeling
gini("eqIncome", weights = "rb050", data = eusilc)


## gini coefficient with Pareto tail modeling

# estimate threshold
ts <- paretoScale(eusilc$eqIncome, w = eusilc$db090,
    groups = eusilc$db030)

# estimate shape parameter
fit <- paretoTail(eusilc$eqIncome, k = ts$k,
    w = eusilc$db090, groups = eusilc$db030)

# calibration of outliers
w <- reweightOut(fit, calibVars(eusilc$db040))
gini(eusilc$eqIncome, w)

# winsorization of outliers
eqIncome <- shrinkOut(fit)
gini(eqIncome, weights = eusilc$rb050)

# replacement of outliers
eqIncome <- replaceOut(fit)
gini(eqIncome, weights = eusilc$rb050)

# replacement of whole tail
eqIncome <- replaceTail(fit)
gini(eqIncome, weights = eusilc$rb050)

}
\references{
A. Alfons and M. Templ (2013) Estimation of Social Exclusion Indicators
from Complex Surveys: The \R Package \pkg{laeken}.  \emph{Journal of
Statistical Software}, \bold{54}(15), 1--25.  \doi{10.18637/jss.v054.i15}

A. Alfons, M. Templ, P. Filzmoser (2013) Robust estimation of economic
indicators from survey samples based on Pareto tail modeling. \emph{Journal
of the Royal Statistical Society, Series C}, \bold{62}(2), 271--286.
}
\seealso{
\code{\link{reweightOut}}, \code{\link{shrinkOut}},
\code{\link{replaceOut}}, \code{\link{replaceTail}}, \code{\link{fitPareto}}

\code{\link{thetaPDC}}, \code{\link{thetaWML}}, \code{\link{thetaHill}},
\code{\link{thetaISE}}, \code{\link{thetaLS}}, \code{\link{thetaMoment}},
\code{\link{thetaQQ}}, \code{\link{thetaTM}}
}
\author{
Andreas Alfons
}
\keyword{manip}
