\name{eusilc}
\alias{eusilc}
\docType{data}
\title{
Synthetic EU-SILC survey data
}
\description{
This data set is synthetically generated from real Austrian EU-SILC (European 
Union Statistics on Income and Living Conditions) data.
}
\usage{data(eusilc)}
\format{
  A data frame with 14827 observations on the following 28 variables.
  \describe{
    \item{\code{db030}}{integer; the household ID.}
    \item{\code{hsize}}{integer; the number of persons in the household.}
    \item{\code{db040}}{factor; the federal state in which the household is 
      located (levels \code{Burgenland}, \code{Carinthia}, 
      \code{Lower Austria}, \code{Salzburg}, \code{Styria}, \code{Tyrol}, 
      \code{Upper Austria}, \code{Vienna} and \code{Vorarlberg}).}
    \item{\code{rb030}}{integer; the personal ID.}
    \item{\code{age}}{integer; the person's age.}
    \item{\code{rb090}}{factor; the person's gender (levels \code{male} and 
      \code{female}).}
    \item{\code{pl030}}{factor; the person's economic status (levels 
      \code{1} = working full time, \code{2} = working part time, \code{3} = 
      unemployed, \code{4} = pupil, student, further training or unpaid work 
      experience or in compulsory military or community service, \code{5} = in 
      retirement or early retirement or has given up business, \code{6} = 
      permanently disabled or/and unfit to work or other inactive person, 
      \code{7} = fulfilling domestic tasks and care responsibilities).}
    \item{\code{pb220a}}{factor; the person's citizenship (levels \code{AT}, 
      \code{EU} and \code{Other}).}
    \item{\code{py010n}}{numeric; employee cash or near cash income (net).}
    \item{\code{py050n}}{numeric; cash benefits or losses from self-employment 
      (net).}
    \item{\code{py090n}}{numeric; unemployment benefits (net).}
    \item{\code{py100n}}{numeric; old-age benefits (net).}
    \item{\code{py110n}}{numeric; survivor's benefits (net).}
    \item{\code{py120n}}{numeric; sickness benefits (net).}
    \item{\code{py130n}}{numeric; disability benefits (net).}
    \item{\code{py140n}}{numeric; education-related allowances (net).}
    \item{\code{hy040n}}{numeric; income from rental of a property or land 
      (net).}
    \item{\code{hy050n}}{numeric; family/children related allowances (net).}
    \item{\code{hy070n}}{numeric; housing allowances (net).}
    \item{\code{hy080n}}{numeric; regular inter-household cash transfer 
      received (net).}
    \item{\code{hy090n}}{numeric; interest, dividends, profit from capital 
      investments in unincorporated business (net).}
    \item{\code{hy110n}}{numeric; income received by people aged under 16 
      (net).}
    \item{\code{hy130n}}{numeric; regular inter-household cash transfer paid 
      (net).}
    \item{\code{hy145n}}{numeric; repayments/receipts for tax adjustment (net).}
    \item{\code{eqSS}}{numeric; the equivalized household size according to the 
      modified OECD scale.}
    \item{\code{eqIncome}}{numeric; a slightly simplified version of the 
      equivalized household income.}
    \item{\code{db090}}{numeric; the household sample weights.}
    \item{\code{rb050}}{numeric; the personal sample weights.}
  }
}
\details{
The data set consists of 6000 households and is used in the examples of package 
\code{laeken}.  Note that this is a synthetic data set based on original 
EU-SILC survey data.

Only a few of the large number of variables in the original survey are included 
in this example data set.  The variable names are rather cryptic codes, but 
these are the standardized names used by the statistical agencies.  Furthermore, 
the variables \code{hsize}, \code{age}, \code{eqSS} and \code{eqIncome} are not 
included in the standardized format of EU-SILC data, but have been derived from 
other variables for convenience.  Moreover, some very sparse income components 
were not included in the the generation of this synthetic data set. Thus the 
equivalized household income is computed from the available income components.
}
\source{
This is a synthetic data set based on Austrian EU-SILC data from 2006.  The 
original sample was provided by Statistics Austria.
}
\references{
A. Alfons and M. Templ (2013) Estimation of Social Exclusion Indicators from 
Complex Surveys: The \R Package \pkg{laeken}.  \emph{Journal of Statistical 
Software}, \bold{54}(15), 1--25.  URL \url{http://www.jstatsoft.org/v54/i15/}

A. Alfons, M. Templ, P. Filzmoser (2011) Simulation of close-to-reality 
population data for household surveys with application to EU-SILC. 
\emph{Statistical Methods and Applications},
vol 20 (3), 383-407. 

Eurostat (2004) Description of target variables: Cross-sectional and 
longitudinal. \emph{EU-SILC 065/04}, Eurostat.
}
\examples{
data(eusilc)
summary(eusilc)
}
\keyword{datasets}
